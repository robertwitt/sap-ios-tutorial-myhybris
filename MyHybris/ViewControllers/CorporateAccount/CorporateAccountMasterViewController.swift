//
// MyHybris
//
// Created by SAP Cloud Platform SDK for iOS Assistant application on 03/05/19
//

import Foundation
import SAPCommon
import SAPFiori
import SAPFoundation
import SAPOData

class CorporateAccountMasterViewController: FUIFormTableViewController, SAPFioriLoadingIndicator {
    var apimktcorporateaccountsrvEntities: APIMKTCORPORATEACCOUNTSRVEntities<OnlineODataProvider>!
    public var loadEntitiesBlock: ((_ completionHandler: @escaping ([CorporateAccount]?, Error?) -> Void) -> Void)?
    private var entities: [CorporateAccount] = [CorporateAccount]()
    private let logger = Logger.shared(named: "CorporateAccountMasterViewControllerLogger")
    private let okTitle = NSLocalizedString("keyOkButtonTitle",
                                            value: "OK",
                                            comment: "XBUT: Title of OK button.")
    private var activities = [FUIActivityItem.phone, FUIActivityItem.message, FUIActivityItem.email]
    var loadingIndicator: FUILoadingIndicatorView?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.edgesForExtendedLayout = []
        // Add refreshcontrol UI
        self.refreshControl?.addTarget(self, action: #selector(self.refresh), for: UIControl.Event.valueChanged)
        self.tableView.addSubview(self.refreshControl!)
        // Cell height settings
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 50
        self.tableView.register(FUIContactCell.self, forCellReuseIdentifier: FUIContactCell.reuseIdentifier)
        self.updateTable()
    }

    var preventNavigationLoop = false
    var entitySetName: String?

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.clearsSelectionOnViewWillAppear = self.splitViewController!.isCollapsed
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return self.entities.count
    }

    override func tableView(_: UITableView, canEditRowAt _: IndexPath) -> Bool {
        return true
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let corporateaccount = self.entities[indexPath.row]
        
        let contactCell = tableView.dequeueReusableCell(withIdentifier: FUIContactCell.reuseIdentifier, for: indexPath) as! FUIContactCell
        
        // get URL from OData service, if available
        if let ciURLString = corporateaccount.interactionContactImageURL, !(corporateaccount.interactionContactImageURL?.isEmpty)! {
            let ciURL = URL(string: ciURLString)
            let data = try? Data(contentsOf: ciURL!)
            
            if let imageData = data {
                contactCell.detailImage = UIImage(data: imageData)
            }
        } else {
            contactCell.detailImage = UIImage() // TODO: Add your own default image
        }
        
        // Added data binding
        contactCell.headlineText = corporateaccount.fullName
        contactCell.subheadlineText = corporateaccount.regionName
        contactCell.descriptionText = "\(String(describing: corporateaccount.streetName)) \(String(describing: corporateaccount.addressHouseNumber))\n \(String(describing: corporateaccount.cityName))\n \(String(describing: corporateaccount.phoneNumber))"
        contactCell.splitPercent = CGFloat(0.3) // Default is 30%
        
        // Add activities from Step 15
        contactCell.activityControl.addActivities(activities)
        contactCell.activityControl.maxVisibleItems = 3
        
        // Perform activity
        contactCell.onActivitySelectedHandler = { activityItem in
            switch activityItem {
            case FUIActivityItem.phone:
                guard let number = URL(string: "tel://" + corporateaccount.phoneNumber!) else { return }
                if UIApplication.shared.canOpenURL(number) {
                    UIApplication.shared.open(number)
                }
            case FUIActivityItem.message:
                guard let sms = URL(string: "sms:" + corporateaccount.phoneNumber!) else { return }
                if UIApplication.shared.canOpenURL(sms) {
                    UIApplication.shared.open(sms)
                }
            case FUIActivityItem.email:
                guard let email = URL(string: "mailto:" + corporateaccount.emailAddress!) else { return }
                if UIApplication.shared.canOpenURL(email) {
                    UIApplication.shared.open(email)
                }
            default: break
            }
        }
        
        return contactCell
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle != .delete {
            return
        }
        let currentEntity = self.entities[indexPath.row]
        self.apimktcorporateaccountsrvEntities.deleteEntity(currentEntity) { error in
            if let error = error {
                self.logger.error("Delete entry failed.", error: error)
                AlertHelper.displayAlert(with: NSLocalizedString("keyErrorDeletingEntryTitle", value: "Delete entry failed", comment: "XTIT: Title of deleting entry error pop up."), error: error, viewController: self)
            } else {
                self.entities.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        }
    }

    // MARK: - Data accessing

    func requestEntities(completionHandler: @escaping (Error?) -> Void) {
        self.loadEntitiesBlock!() { entities, error in
            if let error = error {
                completionHandler(error)
                return
            }
            self.entities = entities!
            completionHandler(nil)
        }
    }

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender _: Any?) {
        if segue.identifier == "showDetail" {
            // Show the selected Entity on the Detail view
            guard let indexPath = self.tableView.indexPathForSelectedRow else {
                return
            }
            self.logger.info("Showing details of the chosen element.")
            let selectedEntity = self.entities[indexPath.row]
            let detailViewController = segue.destination as! CorporateAccountDetailViewController
            detailViewController.entity = selectedEntity
            detailViewController.navigationItem.leftItemsSupplementBackButton = true
            detailViewController.navigationItem.title = "\(self.entities[(self.tableView.indexPathForSelectedRow?.row)!].corporateAccountUUID != nil ? "\(self.entities[(self.tableView.indexPathForSelectedRow?.row)!].corporateAccountUUID!)" : "")"
            detailViewController.allowsEditableCells = false
            detailViewController.tableUpdater = self
            detailViewController.preventNavigationLoop = self.preventNavigationLoop
            detailViewController.apimktcorporateaccountsrvEntities = self.apimktcorporateaccountsrvEntities
            detailViewController.entitySetName = self.entitySetName
        } else if segue.identifier == "addEntity" {
            // Show the Detail view with a new Entity, which can be filled to create on the server
            self.logger.info("Showing view to add new entity.")
            let dest = segue.destination as! UINavigationController
            let detailViewController = dest.viewControllers[0] as! CorporateAccountDetailViewController
            detailViewController.title = NSLocalizedString("keyAddEntityTitle", value: "Add Entity", comment: "XTIT: Title of add new entity screen.")
            let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: detailViewController, action: #selector(detailViewController.createEntity))
            detailViewController.navigationItem.rightBarButtonItem = doneButton
            let cancelButton = UIBarButtonItem(title: NSLocalizedString("keyCancelButtonToGoPreviousScreen", value: "Cancel", comment: "XBUT: Title of Cancel button."), style: .plain, target: detailViewController, action: #selector(detailViewController.cancel))
            detailViewController.navigationItem.leftBarButtonItem = cancelButton
            detailViewController.allowsEditableCells = true
            detailViewController.tableUpdater = self
            detailViewController.apimktcorporateaccountsrvEntities = self.apimktcorporateaccountsrvEntities
            detailViewController.entitySetName = self.entitySetName
        }
    }

    // MARK: - Table update

    func updateTable() {
        self.showFioriLoadingIndicator()
        DispatchQueue.global().async {
            self.loadData {
                self.hideFioriLoadingIndicator()
            }
        }
    }

    private func loadData(completionHandler: @escaping () -> Void) {
        self.requestEntities { error in
            defer {
                completionHandler()
            }
            if let error = error {
                AlertHelper.displayAlert(with: NSLocalizedString("keyErrorLoadingData", value: "Loading data failed!", comment: "XTIT: Title of loading data error pop up."), error: error, viewController: self)
                self.logger.error("Could not update table. Error: \(error)", error: error)
                return
            }
            DispatchQueue.main.async {
                self.tableView.reloadData()
                self.logger.info("Table updated successfully!")
            }
        }
    }

    @objc func refresh() {
        DispatchQueue.global().async {
            self.loadData {
                DispatchQueue.main.async {
                    self.refreshControl?.endRefreshing()
                }
            }
        }
    }
}

extension CorporateAccountMasterViewController: EntitySetUpdaterDelegate {
    func entitySetHasChanged() {
        self.updateTable()
    }
}
