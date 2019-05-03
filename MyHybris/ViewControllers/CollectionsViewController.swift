//
// MyHybris
//
// Created by SAP Cloud Platform SDK for iOS Assistant application on 03/05/19
//

import Foundation
import SAPFiori
import SAPFioriFlows
import SAPOData

protocol EntityUpdaterDelegate {
    func entityHasChanged(_ entity: EntityValue?)
}

protocol EntitySetUpdaterDelegate {
    func entitySetHasChanged()
}

class CollectionsViewController: FUIFormTableViewController {
    private var collections = CollectionType.all

    // Variable to store the selected index path
    private var selectedIndex: IndexPath?

    private let okTitle = NSLocalizedString("keyOkButtonTitle",
                                            value: "OK",
                                            comment: "XBUT: Title of OK button.")

    var isPresentedInSplitView: Bool {
        return !(self.splitViewController?.isCollapsed ?? true)
    }

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.preferredContentSize = CGSize(width: 320, height: 480)

        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 44
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.makeSelection()
    }

    override func viewWillTransition(to _: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        coordinator.animate(alongsideTransition: nil, completion: { _ in
            let isNotInSplitView = !self.isPresentedInSplitView
            self.tableView.visibleCells.forEach { cell in
                // To refresh the disclosure indicator of each cell
                cell.accessoryType = isNotInSplitView ? .disclosureIndicator : .none
            }
            self.makeSelection()
        })
    }

    // MARK: - UITableViewDelegate

    override func numberOfSections(in _: UITableView) -> Int {
        return 1
    }

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return collections.count
    }

    override func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        return 44
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FUIObjectTableViewCell.reuseIdentifier, for: indexPath) as! FUIObjectTableViewCell
        cell.headlineLabel.text = self.collections[indexPath.row].rawValue
        cell.accessoryType = !self.isPresentedInSplitView ? .disclosureIndicator : .none
        cell.isMomentarySelection = false
        return cell
    }

    override func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.collectionSelected(at: indexPath)
    }

    // CollectionType selection helper
    private func collectionSelected(at indexPath: IndexPath) {
        // Load the EntityType specific ViewController from the specific storyboard"
        var masterViewController: UIViewController!
        guard let apimktcorporateaccountsrvEntities = OnboardingSessionManager.shared.onboardingSession?.odataController.apimktcorporateaccountsrvEntities else {
            AlertHelper.displayAlert(with: "OData service is not reachable, please onboard again.", error: nil, viewController: self)
            return
        }
        self.selectedIndex = indexPath

        switch self.collections[indexPath.row] {
        case .marketingAreas:
            let marketingAreaStoryBoard = UIStoryboard(name: "MarketingArea", bundle: nil)
            let marketingAreaMasterViewController = marketingAreaStoryBoard.instantiateViewController(withIdentifier: "MarketingAreaMaster") as! MarketingAreaMasterViewController
            marketingAreaMasterViewController.apimktcorporateaccountsrvEntities = apimktcorporateaccountsrvEntities
            marketingAreaMasterViewController.entitySetName = "MarketingAreas"
            func fetchMarketingAreas(_ completionHandler: @escaping ([MarketingArea]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    apimktcorporateaccountsrvEntities.fetchMarketingAreas(matching: query, completionHandler: completionHandler)
                }
            }
            marketingAreaMasterViewController.loadEntitiesBlock = fetchMarketingAreas
            marketingAreaMasterViewController.navigationItem.title = "MarketingArea"
            masterViewController = marketingAreaMasterViewController
        case .accountTeamMembers:
            let accountTeamMemberStoryBoard = UIStoryboard(name: "AccountTeamMember", bundle: nil)
            let accountTeamMemberMasterViewController = accountTeamMemberStoryBoard.instantiateViewController(withIdentifier: "AccountTeamMemberMaster") as! AccountTeamMemberMasterViewController
            accountTeamMemberMasterViewController.apimktcorporateaccountsrvEntities = apimktcorporateaccountsrvEntities
            accountTeamMemberMasterViewController.entitySetName = "AccountTeamMembers"
            func fetchAccountTeamMembers(_ completionHandler: @escaping ([AccountTeamMember]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    apimktcorporateaccountsrvEntities.fetchAccountTeamMembers(matching: query, completionHandler: completionHandler)
                }
            }
            accountTeamMemberMasterViewController.loadEntitiesBlock = fetchAccountTeamMembers
            accountTeamMemberMasterViewController.navigationItem.title = "AccountTeamMember"
            masterViewController = accountTeamMemberMasterViewController
        case .corporateAccounts:
            let corporateAccountStoryBoard = UIStoryboard(name: "CorporateAccount", bundle: nil)
            let corporateAccountMasterViewController = corporateAccountStoryBoard.instantiateViewController(withIdentifier: "CorporateAccountMaster") as! CorporateAccountMasterViewController
            corporateAccountMasterViewController.apimktcorporateaccountsrvEntities = apimktcorporateaccountsrvEntities
            corporateAccountMasterViewController.entitySetName = "CorporateAccounts"
            func fetchCorporateAccounts(_ completionHandler: @escaping ([CorporateAccount]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    apimktcorporateaccountsrvEntities.fetchCorporateAccounts(matching: query, completionHandler: completionHandler)
                }
            }
            corporateAccountMasterViewController.loadEntitiesBlock = fetchCorporateAccounts
            corporateAccountMasterViewController.navigationItem.title = "CorporateAccount"
            masterViewController = corporateAccountMasterViewController
        case .corporateAccountOriginData:
            let corporateAccountOriginDataStoryBoard = UIStoryboard(name: "CorporateAccountOriginData", bundle: nil)
            let corporateAccountOriginDataMasterViewController = corporateAccountOriginDataStoryBoard.instantiateViewController(withIdentifier: "CorporateAccountOriginDataMaster") as! CorporateAccountOriginDataMasterViewController
            corporateAccountOriginDataMasterViewController.apimktcorporateaccountsrvEntities = apimktcorporateaccountsrvEntities
            corporateAccountOriginDataMasterViewController.entitySetName = "CorporateAccountOriginData"
            func fetchCorporateAccountOriginData(_ completionHandler: @escaping ([CorporateAccountOriginData]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    apimktcorporateaccountsrvEntities.fetchCorporateAccountOriginData(matching: query, completionHandler: completionHandler)
                }
            }
            corporateAccountOriginDataMasterViewController.loadEntitiesBlock = fetchCorporateAccountOriginData
            corporateAccountOriginDataMasterViewController.navigationItem.title = "CorporateAccountOriginData"
            masterViewController = corporateAccountOriginDataMasterViewController
        case .marketingAttributes:
            let marketingAttributeStoryBoard = UIStoryboard(name: "MarketingAttribute", bundle: nil)
            let marketingAttributeMasterViewController = marketingAttributeStoryBoard.instantiateViewController(withIdentifier: "MarketingAttributeMaster") as! MarketingAttributeMasterViewController
            marketingAttributeMasterViewController.apimktcorporateaccountsrvEntities = apimktcorporateaccountsrvEntities
            marketingAttributeMasterViewController.entitySetName = "MarketingAttributes"
            func fetchMarketingAttributes(_ completionHandler: @escaping ([MarketingAttribute]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    apimktcorporateaccountsrvEntities.fetchMarketingAttributes(matching: query, completionHandler: completionHandler)
                }
            }
            marketingAttributeMasterViewController.loadEntitiesBlock = fetchMarketingAttributes
            marketingAttributeMasterViewController.navigationItem.title = "MarketingAttribute"
            masterViewController = marketingAttributeMasterViewController
        case .marketingPermissions:
            let marketingPermissionStoryBoard = UIStoryboard(name: "MarketingPermission", bundle: nil)
            let marketingPermissionMasterViewController = marketingPermissionStoryBoard.instantiateViewController(withIdentifier: "MarketingPermissionMaster") as! MarketingPermissionMasterViewController
            marketingPermissionMasterViewController.apimktcorporateaccountsrvEntities = apimktcorporateaccountsrvEntities
            marketingPermissionMasterViewController.entitySetName = "MarketingPermissions"
            func fetchMarketingPermissions(_ completionHandler: @escaping ([MarketingPermission]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    apimktcorporateaccountsrvEntities.fetchMarketingPermissions(matching: query, completionHandler: completionHandler)
                }
            }
            marketingPermissionMasterViewController.loadEntitiesBlock = fetchMarketingPermissions
            marketingPermissionMasterViewController.navigationItem.title = "MarketingPermission"
            masterViewController = marketingPermissionMasterViewController
        case .additionalIDs:
            let additionalIDStoryBoard = UIStoryboard(name: "AdditionalID", bundle: nil)
            let additionalIDMasterViewController = additionalIDStoryBoard.instantiateViewController(withIdentifier: "AdditionalIDMaster") as! AdditionalIDMasterViewController
            additionalIDMasterViewController.apimktcorporateaccountsrvEntities = apimktcorporateaccountsrvEntities
            additionalIDMasterViewController.entitySetName = "AdditionalIDs"
            func fetchAdditionalIDs(_ completionHandler: @escaping ([AdditionalID]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    apimktcorporateaccountsrvEntities.fetchAdditionalIDs(matching: query, completionHandler: completionHandler)
                }
            }
            additionalIDMasterViewController.loadEntitiesBlock = fetchAdditionalIDs
            additionalIDMasterViewController.navigationItem.title = "AdditionalID"
            masterViewController = additionalIDMasterViewController
        case .none:
            masterViewController = UIViewController()
        }

        // Load the NavigationController and present with the EntityType specific ViewController
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let rightNavigationController = mainStoryBoard.instantiateViewController(withIdentifier: "RightNavigationController") as! UINavigationController
        rightNavigationController.viewControllers = [masterViewController]
        self.splitViewController?.showDetailViewController(rightNavigationController, sender: nil)
    }

    // MARK: - Handle highlighting of selected cell

    private func makeSelection() {
        if let selectedIndex = selectedIndex {
            tableView.selectRow(at: selectedIndex, animated: true, scrollPosition: .none)
            tableView.scrollToRow(at: selectedIndex, at: .none, animated: true)
        } else {
            selectDefault()
        }
    }

    private func selectDefault() {
        // Automatically select first element if we have two panels (iPhone plus and iPad only)
        if self.splitViewController!.isCollapsed || OnboardingSessionManager.shared.onboardingSession?.odataController.apimktcorporateaccountsrvEntities == nil {
            return
        }
        let indexPath = IndexPath(row: 0, section: 0)
        self.tableView.selectRow(at: indexPath, animated: true, scrollPosition: .middle)
        self.collectionSelected(at: indexPath)
    }
}
