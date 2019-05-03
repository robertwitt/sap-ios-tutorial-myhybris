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

class MarketingAreaDetailViewController: FUIFormTableViewController, SAPFioriLoadingIndicator {
    var apimktcorporateaccountsrvEntities: APIMKTCORPORATEACCOUNTSRVEntities<OnlineODataProvider>!
    private var validity = [String: Bool]()
    private var _entity: MarketingArea?
    var allowsEditableCells = false
    var entity: MarketingArea {
        get {
            if _entity == nil {
                _entity = createEntityWithDefaultValues()
            }
            return _entity!
        }
        set {
            _entity = newValue
        }
    }

    private let logger = Logger.shared(named: "MarketingAreaMasterViewControllerLogger")
    var loadingIndicator: FUILoadingIndicatorView?
    var entityUpdater: EntityUpdaterDelegate?
    var tableUpdater: EntitySetUpdaterDelegate?
    private let okTitle = NSLocalizedString("keyOkButtonTitle",
                                            value: "OK",
                                            comment: "XBUT: Title of OK button.")
    var preventNavigationLoop = false
    var entitySetName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 44
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender _: Any?) {
        if segue.identifier == "updateEntity" {
            // Show the Detail view with the current entity, where the properties scan be edited and updated
            self.logger.info("Showing a view to update the selected entity.")
            let dest = segue.destination as! UINavigationController
            let detailViewController = dest.viewControllers[0] as! MarketingAreaDetailViewController
            detailViewController.title = NSLocalizedString("keyUpdateEntityTitle", value: "Update Entity", comment: "XTIT: Title of update selected entity screen.")
            detailViewController.apimktcorporateaccountsrvEntities = self.apimktcorporateaccountsrvEntities
            detailViewController.entity = self.entity
            let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: detailViewController, action: #selector(detailViewController.updateEntity))
            detailViewController.navigationItem.rightBarButtonItem = doneButton
            let cancelButton = UIBarButtonItem(title: NSLocalizedString("keyCancelButtonToGoPreviousScreen", value: "Cancel", comment: "XBUT: Title of Cancel button."), style: .plain, target: detailViewController, action: #selector(detailViewController.cancel))
            detailViewController.navigationItem.leftBarButtonItem = cancelButton
            detailViewController.allowsEditableCells = true
            detailViewController.entityUpdater = self
        }
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            return self.cellForCorporateAccountOrigin(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingArea.corporateAccountOrigin)
        case 1:
            return self.cellForCorporateAccountID(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingArea.corporateAccountID)
        case 2:
            return self.cellForInteractionContactMktgArea(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingArea.interactionContactMktgArea)
        case 3:
            return self.cellForInteractionContactMktgAreaName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingArea.interactionContactMktgAreaName)
        case 4:
            return self.cellForCorporateAccountUUID(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingArea.corporateAccountUUID)
        case 5:
            return self.cellForInteractionContactAdditionalOriginUUID(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingArea.interactionContactAdditionalOriginUUID)
        case 6:
            return self.cellForInteractionContactMktgAreaUUID(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingArea.interactionContactMktgAreaUUID)
        default:
            return UITableViewCell()
        }
    }

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return 7
    }

    override func tableView(_: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        if indexPath.row < 7 {
            return true
        }
        return false
    }

    override func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        if self.preventNavigationLoop {
            return
        }
        switch indexPath.row {
        default:
            return
        }
    }

    // MARK: - OData property specific cell creators

    private func cellForCorporateAccountOrigin(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingArea, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.corporateAccountOrigin {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.corporateAccountOrigin = nil
                isNewValueValid = true
            } else {
                if MarketingArea.corporateAccountOrigin.isOptional || newValue != "" {
                    currentEntity.corporateAccountOrigin = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCorporateAccountID(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingArea, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.corporateAccountID {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.corporateAccountID = nil
                isNewValueValid = true
            } else {
                if MarketingArea.corporateAccountID.isOptional || newValue != "" {
                    currentEntity.corporateAccountID = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForInteractionContactMktgArea(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingArea, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.interactionContactMktgArea {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.interactionContactMktgArea = nil
                isNewValueValid = true
            } else {
                if MarketingArea.interactionContactMktgArea.isOptional || newValue != "" {
                    currentEntity.interactionContactMktgArea = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForInteractionContactMktgAreaName(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingArea, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.interactionContactMktgAreaName {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.interactionContactMktgAreaName = nil
                isNewValueValid = true
            } else {
                if MarketingArea.interactionContactMktgAreaName.isOptional || newValue != "" {
                    currentEntity.interactionContactMktgAreaName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCorporateAccountUUID(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingArea, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.corporateAccountUUID {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.corporateAccountUUID = nil
                isNewValueValid = true
            } else {
                if let validValue = GuidValue.parse(newValue) {
                    currentEntity.corporateAccountUUID = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForInteractionContactAdditionalOriginUUID(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingArea, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.interactionContactAdditionalOriginUUID {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.interactionContactAdditionalOriginUUID = nil
                isNewValueValid = true
            } else {
                if let validValue = GuidValue.parse(newValue) {
                    currentEntity.interactionContactAdditionalOriginUUID = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForInteractionContactMktgAreaUUID(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingArea, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.interactionContactMktgAreaUUID {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.interactionContactMktgAreaUUID = nil
                isNewValueValid = true
            } else {
                if let validValue = GuidValue.parse(newValue) {
                    currentEntity.interactionContactMktgAreaUUID = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    // MARK: - OData functionalities

    @objc func createEntity() {
        self.showFioriLoadingIndicator()
        self.view.endEditing(true)
        self.logger.info("Creating entity in backend.")
        self.apimktcorporateaccountsrvEntities.createEntity(self.entity) { error in
            self.hideFioriLoadingIndicator()
            if let error = error {
                self.logger.error("Create entry failed. Error: \(error)", error: error)
                AlertHelper.displayAlert(with: NSLocalizedString("keyErrorEntityCreationTitle", value: "Create entry failed", comment: "XTIT: Title of alert message about entity creation error."), error: error, viewController: self)
                return
            }
            self.logger.info("Create entry finished successfully.")
            DispatchQueue.main.async {
                self.dismiss(animated: true) {
                    FUIToastMessage.show(message: NSLocalizedString("keyEntityCreationBody", value: "Created", comment: "XMSG: Title of alert message about successful entity creation."))
                    self.tableUpdater?.entitySetHasChanged()
                }
            }
        }
    }

    func createEntityWithDefaultValues() -> MarketingArea {
        let newEntity = MarketingArea()

        // Key properties without default value should be invalid by default for Create scenario
        if newEntity.corporateAccountOrigin == nil || newEntity.corporateAccountOrigin!.isEmpty {
            self.validity["CorporateAccountOrigin"] = false
        }
        if newEntity.corporateAccountID == nil || newEntity.corporateAccountID!.isEmpty {
            self.validity["CorporateAccountID"] = false
        }
        if newEntity.interactionContactMktgArea == nil || newEntity.interactionContactMktgArea!.isEmpty {
            self.validity["InteractionContactMktgArea"] = false
        }
        self.barButtonShouldBeEnabled()
        return newEntity
    }

    @objc func updateEntity(_: AnyObject) {
        self.showFioriLoadingIndicator()
        self.view.endEditing(true)
        self.logger.info("Updating entity in backend.")
        self.apimktcorporateaccountsrvEntities.updateEntity(self.entity) { error in
            self.hideFioriLoadingIndicator()
            if let error = error {
                self.logger.error("Update entry failed. Error: \(error)", error: error)
                AlertHelper.displayAlert(with: NSLocalizedString("keyErrorEntityUpdateTitle", value: "Update entry failed", comment: "XTIT: Title of alert message about entity update failure."), error: error, viewController: self)
                return
            }
            self.logger.info("Update entry finished successfully.")
            DispatchQueue.main.async {
                self.dismiss(animated: true) {
                    FUIToastMessage.show(message: NSLocalizedString("keyUpdateEntityFinishedTitle", value: "Updated", comment: "XTIT: Title of alert message about successful entity update."))
                    self.entityUpdater?.entityHasChanged(self.entity)
                }
            }
        }
    }

    // MARK: - other logic, helper

    @objc func cancel() {
        DispatchQueue.main.async {
            self.dismiss(animated: true)
        }
    }

    // Check if all text fields are valid
    private func barButtonShouldBeEnabled() {
        let anyFieldInvalid = self.validity.values.first { field in
            field == false
        }
        self.navigationItem.rightBarButtonItem?.isEnabled = anyFieldInvalid == nil
    }
}

extension MarketingAreaDetailViewController: EntityUpdaterDelegate {
    func entityHasChanged(_ entityValue: EntityValue?) {
        if let entity = entityValue {
            let currentEntity = entity as! MarketingArea
            self.entity = currentEntity
            DispatchQueue.main.async { [weak self] in
                self?.tableView.reloadData()
            }
        }
    }
}
