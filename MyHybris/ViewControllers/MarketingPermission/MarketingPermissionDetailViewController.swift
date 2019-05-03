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

class MarketingPermissionDetailViewController: FUIFormTableViewController, SAPFioriLoadingIndicator {
    var apimktcorporateaccountsrvEntities: APIMKTCORPORATEACCOUNTSRVEntities<OnlineODataProvider>!
    private var validity = [String: Bool]()
    private var _entity: MarketingPermission?
    var allowsEditableCells = false
    var entity: MarketingPermission {
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

    private let logger = Logger.shared(named: "MarketingPermissionMasterViewControllerLogger")
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
            let detailViewController = dest.viewControllers[0] as! MarketingPermissionDetailViewController
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
            return self.cellForCorporateAccountID(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.corporateAccountID)
        case 1:
            return self.cellForCorporateAccountOrigin(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.corporateAccountOrigin)
        case 2:
            return self.cellForCorporateAccountPermissionID(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.corporateAccountPermissionID)
        case 3:
            return self.cellForCorpAcctPermissionOrigin(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.corpAcctPermissionOrigin)
        case 4:
            return self.cellForCorpAcctPermissionOriginName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.corpAcctPermissionOriginName)
        case 5:
            return self.cellForMarketingArea(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.marketingArea)
        case 6:
            return self.cellForMarketingAreaName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.marketingAreaName)
        case 7:
            return self.cellForCommunicationMedium(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.communicationMedium)
        case 8:
            return self.cellForCommunicationMediumName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.communicationMediumName)
        case 9:
            return self.cellForCommunicationCategory(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.communicationCategory)
        case 10:
            return self.cellForContactUUID(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.contactUUID)
        case 11:
            return self.cellForCorporateAccountPermission(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.corporateAccountPermission)
        case 12:
            return self.cellForPermissionUTCDateTime(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.permissionUTCDateTime)
        case 13:
            return self.cellForCommunicationDirection(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.communicationDirection)
        case 14:
            return self.cellForCommunicationCategoryName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.communicationCategoryName)
        case 15:
            return self.cellForPermissionSourceObject(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.permissionSourceObject)
        case 16:
            return self.cellForPermissionSourceObjectType(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.permissionSourceObjectType)
        case 17:
            return self.cellForPermissionSourceSystem(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.permissionSourceSystem)
        case 18:
            return self.cellForPermissionSourceSystemType(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.permissionSourceSystemType)
        case 19:
            return self.cellForPermissionSourceDataURL(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.permissionSourceDataURL)
        case 20:
            return self.cellForPermissionSourceCommMedium(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.permissionSourceCommMedium)
        case 21:
            return self.cellForPermissionSourceCommMediumName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.permissionSourceCommMediumName)
        case 22:
            return self.cellForPermissionIsExplicit(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.permissionIsExplicit)
        case 23:
            return self.cellForIsConfirmationRequired(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.isConfirmationRequired)
        case 24:
            return self.cellForPermissionLastChangedUserName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.permissionLastChangedUserName)
        case 25:
            return self.cellForPermissionLastChangedDateTime(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.permissionLastChangedDateTime)
        case 26:
            return self.cellForPermissionUUID(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.permissionUUID)
        case 27:
            return self.cellForPermissionNoteText(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: MarketingPermission.permissionNoteText)
        default:
            return UITableViewCell()
        }
    }

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return 28
    }

    override func tableView(_: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        if indexPath.row < 28 {
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

    private func cellForCorporateAccountID(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
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
                if MarketingPermission.corporateAccountID.isOptional || newValue != "" {
                    currentEntity.corporateAccountID = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCorporateAccountOrigin(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
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
                if MarketingPermission.corporateAccountOrigin.isOptional || newValue != "" {
                    currentEntity.corporateAccountOrigin = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCorporateAccountPermissionID(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.corporateAccountPermissionID {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.corporateAccountPermissionID = nil
                isNewValueValid = true
            } else {
                if MarketingPermission.corporateAccountPermissionID.isOptional || newValue != "" {
                    currentEntity.corporateAccountPermissionID = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCorpAcctPermissionOrigin(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.corpAcctPermissionOrigin {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.corpAcctPermissionOrigin = nil
                isNewValueValid = true
            } else {
                if MarketingPermission.corpAcctPermissionOrigin.isOptional || newValue != "" {
                    currentEntity.corpAcctPermissionOrigin = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCorpAcctPermissionOriginName(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.corpAcctPermissionOriginName {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.corpAcctPermissionOriginName = nil
                isNewValueValid = true
            } else {
                if MarketingPermission.corpAcctPermissionOriginName.isOptional || newValue != "" {
                    currentEntity.corpAcctPermissionOriginName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForMarketingArea(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.marketingArea {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.marketingArea = nil
                isNewValueValid = true
            } else {
                if MarketingPermission.marketingArea.isOptional || newValue != "" {
                    currentEntity.marketingArea = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForMarketingAreaName(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.marketingAreaName {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.marketingAreaName = nil
                isNewValueValid = true
            } else {
                if MarketingPermission.marketingAreaName.isOptional || newValue != "" {
                    currentEntity.marketingAreaName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCommunicationMedium(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.communicationMedium {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.communicationMedium = nil
                isNewValueValid = true
            } else {
                if MarketingPermission.communicationMedium.isOptional || newValue != "" {
                    currentEntity.communicationMedium = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCommunicationMediumName(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.communicationMediumName {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.communicationMediumName = nil
                isNewValueValid = true
            } else {
                if MarketingPermission.communicationMediumName.isOptional || newValue != "" {
                    currentEntity.communicationMediumName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCommunicationCategory(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.communicationCategory {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.communicationCategory = nil
                isNewValueValid = true
            } else {
                if MarketingPermission.communicationCategory.isOptional || newValue != "" {
                    currentEntity.communicationCategory = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForContactUUID(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.contactUUID {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.contactUUID = nil
                isNewValueValid = true
            } else {
                if let validValue = GuidValue.parse(newValue) {
                    currentEntity.contactUUID = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCorporateAccountPermission(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.corporateAccountPermission {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.corporateAccountPermission = nil
                isNewValueValid = true
            } else {
                if MarketingPermission.corporateAccountPermission.isOptional || newValue != "" {
                    currentEntity.corporateAccountPermission = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPermissionUTCDateTime(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.permissionUTCDateTime {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.permissionUTCDateTime = nil
                isNewValueValid = true
            } else {
                if let validValue = GlobalDateTime.parse(newValue) { // This is just a simple solution to handle UTC only
                    currentEntity.permissionUTCDateTime = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCommunicationDirection(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.communicationDirection {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.communicationDirection = nil
                isNewValueValid = true
            } else {
                if MarketingPermission.communicationDirection.isOptional || newValue != "" {
                    currentEntity.communicationDirection = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCommunicationCategoryName(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.communicationCategoryName {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.communicationCategoryName = nil
                isNewValueValid = true
            } else {
                if MarketingPermission.communicationCategoryName.isOptional || newValue != "" {
                    currentEntity.communicationCategoryName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPermissionSourceObject(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.permissionSourceObject {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.permissionSourceObject = nil
                isNewValueValid = true
            } else {
                if MarketingPermission.permissionSourceObject.isOptional || newValue != "" {
                    currentEntity.permissionSourceObject = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPermissionSourceObjectType(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.permissionSourceObjectType {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.permissionSourceObjectType = nil
                isNewValueValid = true
            } else {
                if MarketingPermission.permissionSourceObjectType.isOptional || newValue != "" {
                    currentEntity.permissionSourceObjectType = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPermissionSourceSystem(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.permissionSourceSystem {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.permissionSourceSystem = nil
                isNewValueValid = true
            } else {
                if MarketingPermission.permissionSourceSystem.isOptional || newValue != "" {
                    currentEntity.permissionSourceSystem = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPermissionSourceSystemType(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.permissionSourceSystemType {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.permissionSourceSystemType = nil
                isNewValueValid = true
            } else {
                if MarketingPermission.permissionSourceSystemType.isOptional || newValue != "" {
                    currentEntity.permissionSourceSystemType = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPermissionSourceDataURL(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.permissionSourceDataURL {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.permissionSourceDataURL = nil
                isNewValueValid = true
            } else {
                if MarketingPermission.permissionSourceDataURL.isOptional || newValue != "" {
                    currentEntity.permissionSourceDataURL = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPermissionSourceCommMedium(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.permissionSourceCommMedium {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.permissionSourceCommMedium = nil
                isNewValueValid = true
            } else {
                if MarketingPermission.permissionSourceCommMedium.isOptional || newValue != "" {
                    currentEntity.permissionSourceCommMedium = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPermissionSourceCommMediumName(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.permissionSourceCommMediumName {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.permissionSourceCommMediumName = nil
                isNewValueValid = true
            } else {
                if MarketingPermission.permissionSourceCommMediumName.isOptional || newValue != "" {
                    currentEntity.permissionSourceCommMediumName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPermissionIsExplicit(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.permissionIsExplicit {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.permissionIsExplicit = nil
                isNewValueValid = true
            } else {
                if let validValue = Bool(newValue) {
                    currentEntity.permissionIsExplicit = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForIsConfirmationRequired(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.isConfirmationRequired {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.isConfirmationRequired = nil
                isNewValueValid = true
            } else {
                if let validValue = Bool(newValue) {
                    currentEntity.isConfirmationRequired = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPermissionLastChangedUserName(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.permissionLastChangedUserName {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.permissionLastChangedUserName = nil
                isNewValueValid = true
            } else {
                if MarketingPermission.permissionLastChangedUserName.isOptional || newValue != "" {
                    currentEntity.permissionLastChangedUserName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPermissionLastChangedDateTime(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.permissionLastChangedDateTime {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.permissionLastChangedDateTime = nil
                isNewValueValid = true
            } else {
                if let validValue = LocalDateTime.parse(newValue) { // This is just a simple solution to handle UTC only
                    currentEntity.permissionLastChangedDateTime = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPermissionUUID(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.permissionUUID {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.permissionUUID = nil
                isNewValueValid = true
            } else {
                if let validValue = GuidValue.parse(newValue) {
                    currentEntity.permissionUUID = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPermissionNoteText(tableView: UITableView, indexPath: IndexPath, currentEntity: MarketingPermission, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.permissionNoteText {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.permissionNoteText = nil
                isNewValueValid = true
            } else {
                if MarketingPermission.permissionNoteText.isOptional || newValue != "" {
                    currentEntity.permissionNoteText = newValue
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

    func createEntityWithDefaultValues() -> MarketingPermission {
        let newEntity = MarketingPermission()

        // Key properties without default value should be invalid by default for Create scenario
        if newEntity.corporateAccountID == nil || newEntity.corporateAccountID!.isEmpty {
            self.validity["CorporateAccountID"] = false
        }
        if newEntity.corporateAccountOrigin == nil || newEntity.corporateAccountOrigin!.isEmpty {
            self.validity["CorporateAccountOrigin"] = false
        }
        if newEntity.corporateAccountPermissionID == nil || newEntity.corporateAccountPermissionID!.isEmpty {
            self.validity["CorporateAccountPermissionID"] = false
        }
        if newEntity.corpAcctPermissionOrigin == nil || newEntity.corpAcctPermissionOrigin!.isEmpty {
            self.validity["CorpAcctPermissionOrigin"] = false
        }
        if newEntity.marketingArea == nil || newEntity.marketingArea!.isEmpty {
            self.validity["MarketingArea"] = false
        }
        if newEntity.communicationMedium == nil || newEntity.communicationMedium!.isEmpty {
            self.validity["CommunicationMedium"] = false
        }
        if newEntity.communicationCategory == nil || newEntity.communicationCategory!.isEmpty {
            self.validity["CommunicationCategory"] = false
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

extension MarketingPermissionDetailViewController: EntityUpdaterDelegate {
    func entityHasChanged(_ entityValue: EntityValue?) {
        if let entity = entityValue {
            let currentEntity = entity as! MarketingPermission
            self.entity = currentEntity
            DispatchQueue.main.async { [weak self] in
                self?.tableView.reloadData()
            }
        }
    }
}
