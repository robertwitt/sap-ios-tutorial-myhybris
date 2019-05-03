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

class CorporateAccountOriginDataDetailViewController: FUIFormTableViewController, SAPFioriLoadingIndicator {
    var apimktcorporateaccountsrvEntities: APIMKTCORPORATEACCOUNTSRVEntities<OnlineODataProvider>!
    private var validity = [String: Bool]()
    private var _entity: CorporateAccountOriginData?
    var allowsEditableCells = false
    var entity: CorporateAccountOriginData {
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

    private let logger = Logger.shared(named: "CorporateAccountOriginDataMasterViewControllerLogger")
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
            let detailViewController = dest.viewControllers[0] as! CorporateAccountOriginDataDetailViewController
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
            return self.cellForCorporateAccountOrigin(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.corporateAccountOrigin)
        case 1:
            return self.cellForCorporateAccountID(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.corporateAccountID)
        case 2:
            return self.cellForCorpAcctIsRlvtForAcctBasedMktg(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.corpAcctIsRlvtForAcctBasedMktg)
        case 3:
            return self.cellForValidationStatus(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.validationStatus)
        case 4:
            return self.cellForValidationStatusName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.validationStatusName)
        case 5:
            return self.cellForIsEndOfPurposeBlocked(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.isEndOfPurposeBlocked)
        case 6:
            return self.cellForTrackingID(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.trackingID)
        case 7:
            return self.cellForOriginDataLastChgUTCDateTime(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.originDataLastChgUTCDateTime)
        case 8:
            return self.cellForLastChangeDateTime(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.lastChangeDateTime)
        case 9:
            return self.cellForLastChangedByUser(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.lastChangedByUser)
        case 10:
            return self.cellForWebSiteURL(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.webSiteURL)
        case 11:
            return self.cellForCorporateAccountUUID(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.corporateAccountUUID)
        case 12:
            return self.cellForCreationDateTime(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.creationDateTime)
        case 13:
            return self.cellForCreatedByUser(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.createdByUser)
        case 14:
            return self.cellForInteractionContactImageURL(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.interactionContactImageURL)
        case 15:
            return self.cellForLatitude(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.latitude)
        case 16:
            return self.cellForFullName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.fullName)
        case 17:
            return self.cellForLongitude(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.longitude)
        case 18:
            return self.cellForSpatialReferenceSystem(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.spatialReferenceSystem)
        case 19:
            return self.cellForCityName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.cityName)
        case 20:
            return self.cellForStreetName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.streetName)
        case 21:
            return self.cellForAddressHouseNumber(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.addressHouseNumber)
        case 22:
            return self.cellForLanguage(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.language)
        case 23:
            return self.cellForLanguageName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.languageName)
        case 24:
            return self.cellForEmailAddress(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.emailAddress)
        case 25:
            return self.cellForPhoneNumber(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.phoneNumber)
        case 26:
            return self.cellForMobileNumber(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.mobileNumber)
        case 27:
            return self.cellForFaxNumber(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.faxNumber)
        case 28:
            return self.cellForHasMktgPermissionForDirectMail(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.hasMktgPermissionForDirectMail)
        case 29:
            return self.cellForCountry(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.country)
        case 30:
            return self.cellForCountryName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.countryName)
        case 31:
            return self.cellForAddressRegion(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.addressRegion)
        case 32:
            return self.cellForRegionName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.regionName)
        case 33:
            return self.cellForContactPostalCode(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.contactPostalCode)
        case 34:
            return self.cellForIndustry(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.industry)
        case 35:
            return self.cellForIndustryName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.industryName)
        case 36:
            return self.cellForIsObsolete(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccountOriginData.isObsolete)
        case 37:
            let cell = CellCreationHelper.cellForDefault(tableView: tableView, indexPath: indexPath, editingIsAllowed: false)
            cell.keyName = "MarketingPermissions"
            if self.entity.isNew {
                cell.keyLabel.textColor = UIColor.lightGray
            }
            cell.value = " "
            cell.accessoryType = .disclosureIndicator
            return cell
        case 38:
            let cell = CellCreationHelper.cellForDefault(tableView: tableView, indexPath: indexPath, editingIsAllowed: false)
            cell.keyName = "MarketingAreas"
            if self.entity.isNew {
                cell.keyLabel.textColor = UIColor.lightGray
            }
            cell.value = " "
            cell.accessoryType = .disclosureIndicator
            return cell
        case 39:
            let cell = CellCreationHelper.cellForDefault(tableView: tableView, indexPath: indexPath, editingIsAllowed: false)
            cell.keyName = "MarketingAttributes"
            if self.entity.isNew {
                cell.keyLabel.textColor = UIColor.lightGray
            }
            cell.value = " "
            cell.accessoryType = .disclosureIndicator
            return cell
        case 40:
            let cell = CellCreationHelper.cellForDefault(tableView: tableView, indexPath: indexPath, editingIsAllowed: false)
            cell.keyName = "AdditionalIDs"
            if self.entity.isNew {
                cell.keyLabel.textColor = UIColor.lightGray
            }
            cell.value = " "
            cell.accessoryType = .disclosureIndicator
            return cell
        default:
            return UITableViewCell()
        }
    }

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return 41
    }

    override func tableView(_: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        if indexPath.row < 37 {
            return true
        }
        return false
    }

    override func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        if self.preventNavigationLoop {
            return
        }
        switch indexPath.row {
        case 37:
            if !self.entity.isNew {
                self.showFioriLoadingIndicator()
                let destinationStoryBoard = UIStoryboard(name: "MarketingPermission", bundle: nil)
                var masterViewController = destinationStoryBoard.instantiateViewController(withIdentifier: "MarketingPermissionMaster")
                func loadProperty(_ completionHandler: @escaping ([MarketingPermission]?, Error?) -> Void) {
                    self.apimktcorporateaccountsrvEntities.loadProperty(CorporateAccountOriginData.marketingPermissions, into: self.entity) { error in
                        self.hideFioriLoadingIndicator()
                        if let error = error {
                            completionHandler(nil, error)
                            return
                        }
                        completionHandler(self.entity.marketingPermissions, nil)
                    }
                }
                (masterViewController as! MarketingPermissionMasterViewController).loadEntitiesBlock = loadProperty
                masterViewController.navigationItem.title = "MarketingPermissions"
                (masterViewController as! MarketingPermissionMasterViewController).preventNavigationLoop = true
                (masterViewController as! MarketingPermissionMasterViewController).apimktcorporateaccountsrvEntities = apimktcorporateaccountsrvEntities
                self.navigationController?.pushViewController(masterViewController, animated: true)
            }
        case 38:
            if !self.entity.isNew {
                self.showFioriLoadingIndicator()
                let destinationStoryBoard = UIStoryboard(name: "MarketingArea", bundle: nil)
                var masterViewController = destinationStoryBoard.instantiateViewController(withIdentifier: "MarketingAreaMaster")
                func loadProperty(_ completionHandler: @escaping ([MarketingArea]?, Error?) -> Void) {
                    self.apimktcorporateaccountsrvEntities.loadProperty(CorporateAccountOriginData.marketingAreas, into: self.entity) { error in
                        self.hideFioriLoadingIndicator()
                        if let error = error {
                            completionHandler(nil, error)
                            return
                        }
                        completionHandler(self.entity.marketingAreas, nil)
                    }
                }
                (masterViewController as! MarketingAreaMasterViewController).loadEntitiesBlock = loadProperty
                masterViewController.navigationItem.title = "MarketingAreas"
                (masterViewController as! MarketingAreaMasterViewController).preventNavigationLoop = true
                (masterViewController as! MarketingAreaMasterViewController).apimktcorporateaccountsrvEntities = apimktcorporateaccountsrvEntities
                self.navigationController?.pushViewController(masterViewController, animated: true)
            }
        case 39:
            if !self.entity.isNew {
                self.showFioriLoadingIndicator()
                let destinationStoryBoard = UIStoryboard(name: "MarketingAttribute", bundle: nil)
                var masterViewController = destinationStoryBoard.instantiateViewController(withIdentifier: "MarketingAttributeMaster")
                func loadProperty(_ completionHandler: @escaping ([MarketingAttribute]?, Error?) -> Void) {
                    self.apimktcorporateaccountsrvEntities.loadProperty(CorporateAccountOriginData.marketingAttributes, into: self.entity) { error in
                        self.hideFioriLoadingIndicator()
                        if let error = error {
                            completionHandler(nil, error)
                            return
                        }
                        completionHandler(self.entity.marketingAttributes, nil)
                    }
                }
                (masterViewController as! MarketingAttributeMasterViewController).loadEntitiesBlock = loadProperty
                masterViewController.navigationItem.title = "MarketingAttributes"
                (masterViewController as! MarketingAttributeMasterViewController).preventNavigationLoop = true
                (masterViewController as! MarketingAttributeMasterViewController).apimktcorporateaccountsrvEntities = apimktcorporateaccountsrvEntities
                self.navigationController?.pushViewController(masterViewController, animated: true)
            }
        case 40:
            if !self.entity.isNew {
                self.showFioriLoadingIndicator()
                let destinationStoryBoard = UIStoryboard(name: "AdditionalID", bundle: nil)
                var masterViewController = destinationStoryBoard.instantiateViewController(withIdentifier: "AdditionalIDMaster")
                func loadProperty(_ completionHandler: @escaping ([AdditionalID]?, Error?) -> Void) {
                    self.apimktcorporateaccountsrvEntities.loadProperty(CorporateAccountOriginData.additionalIDs, into: self.entity) { error in
                        self.hideFioriLoadingIndicator()
                        if let error = error {
                            completionHandler(nil, error)
                            return
                        }
                        completionHandler(self.entity.additionalIDs, nil)
                    }
                }
                (masterViewController as! AdditionalIDMasterViewController).loadEntitiesBlock = loadProperty
                masterViewController.navigationItem.title = "AdditionalIDs"
                (masterViewController as! AdditionalIDMasterViewController).preventNavigationLoop = true
                (masterViewController as! AdditionalIDMasterViewController).apimktcorporateaccountsrvEntities = apimktcorporateaccountsrvEntities
                self.navigationController?.pushViewController(masterViewController, animated: true)
            }
        default:
            return
        }
    }

    // MARK: - OData property specific cell creators

    private func cellForCorporateAccountOrigin(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
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
                if CorporateAccountOriginData.corporateAccountOrigin.isOptional || newValue != "" {
                    currentEntity.corporateAccountOrigin = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCorporateAccountID(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
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
                if CorporateAccountOriginData.corporateAccountID.isOptional || newValue != "" {
                    currentEntity.corporateAccountID = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCorpAcctIsRlvtForAcctBasedMktg(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.corpAcctIsRlvtForAcctBasedMktg {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.corpAcctIsRlvtForAcctBasedMktg = nil
                isNewValueValid = true
            } else {
                if let validValue = Bool(newValue) {
                    currentEntity.corpAcctIsRlvtForAcctBasedMktg = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForValidationStatus(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.validationStatus {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.validationStatus = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.validationStatus.isOptional || newValue != "" {
                    currentEntity.validationStatus = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForValidationStatusName(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.validationStatusName {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.validationStatusName = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.validationStatusName.isOptional || newValue != "" {
                    currentEntity.validationStatusName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForIsEndOfPurposeBlocked(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.isEndOfPurposeBlocked {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.isEndOfPurposeBlocked = nil
                isNewValueValid = true
            } else {
                if let validValue = Bool(newValue) {
                    currentEntity.isEndOfPurposeBlocked = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForTrackingID(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.trackingID {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.trackingID = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.trackingID.isOptional || newValue != "" {
                    currentEntity.trackingID = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForOriginDataLastChgUTCDateTime(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.originDataLastChgUTCDateTime {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.originDataLastChgUTCDateTime = nil
                isNewValueValid = true
            } else {
                if let validValue = GlobalDateTime.parse(newValue) { // This is just a simple solution to handle UTC only
                    currentEntity.originDataLastChgUTCDateTime = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForLastChangeDateTime(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.lastChangeDateTime {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.lastChangeDateTime = nil
                isNewValueValid = true
            } else {
                if let validValue = GlobalDateTime.parse(newValue) { // This is just a simple solution to handle UTC only
                    currentEntity.lastChangeDateTime = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForLastChangedByUser(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.lastChangedByUser {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.lastChangedByUser = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.lastChangedByUser.isOptional || newValue != "" {
                    currentEntity.lastChangedByUser = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForWebSiteURL(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.webSiteURL {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.webSiteURL = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.webSiteURL.isOptional || newValue != "" {
                    currentEntity.webSiteURL = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCorporateAccountUUID(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
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

    private func cellForCreationDateTime(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.creationDateTime {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.creationDateTime = nil
                isNewValueValid = true
            } else {
                if let validValue = GlobalDateTime.parse(newValue) { // This is just a simple solution to handle UTC only
                    currentEntity.creationDateTime = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCreatedByUser(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.createdByUser {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.createdByUser = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.createdByUser.isOptional || newValue != "" {
                    currentEntity.createdByUser = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForInteractionContactImageURL(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.interactionContactImageURL {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.interactionContactImageURL = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.interactionContactImageURL.isOptional || newValue != "" {
                    currentEntity.interactionContactImageURL = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForLatitude(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.latitude {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.latitude = nil
                isNewValueValid = true
            } else {
                if let validValue = BigDecimal.parse(newValue) {
                    currentEntity.latitude = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForFullName(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.fullName {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.fullName = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.fullName.isOptional || newValue != "" {
                    currentEntity.fullName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForLongitude(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.longitude {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.longitude = nil
                isNewValueValid = true
            } else {
                if let validValue = BigDecimal.parse(newValue) {
                    currentEntity.longitude = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForSpatialReferenceSystem(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.spatialReferenceSystem {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.spatialReferenceSystem = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.spatialReferenceSystem.isOptional || newValue != "" {
                    currentEntity.spatialReferenceSystem = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCityName(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.cityName {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.cityName = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.cityName.isOptional || newValue != "" {
                    currentEntity.cityName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForStreetName(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.streetName {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.streetName = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.streetName.isOptional || newValue != "" {
                    currentEntity.streetName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForAddressHouseNumber(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.addressHouseNumber {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.addressHouseNumber = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.addressHouseNumber.isOptional || newValue != "" {
                    currentEntity.addressHouseNumber = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForLanguage(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.language {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.language = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.language.isOptional || newValue != "" {
                    currentEntity.language = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForLanguageName(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.languageName {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.languageName = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.languageName.isOptional || newValue != "" {
                    currentEntity.languageName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForEmailAddress(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.emailAddress {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.emailAddress = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.emailAddress.isOptional || newValue != "" {
                    currentEntity.emailAddress = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPhoneNumber(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.phoneNumber {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.phoneNumber = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.phoneNumber.isOptional || newValue != "" {
                    currentEntity.phoneNumber = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForMobileNumber(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.mobileNumber {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.mobileNumber = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.mobileNumber.isOptional || newValue != "" {
                    currentEntity.mobileNumber = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForFaxNumber(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.faxNumber {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.faxNumber = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.faxNumber.isOptional || newValue != "" {
                    currentEntity.faxNumber = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForHasMktgPermissionForDirectMail(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.hasMktgPermissionForDirectMail {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.hasMktgPermissionForDirectMail = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.hasMktgPermissionForDirectMail.isOptional || newValue != "" {
                    currentEntity.hasMktgPermissionForDirectMail = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCountry(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.country {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.country = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.country.isOptional || newValue != "" {
                    currentEntity.country = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCountryName(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.countryName {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.countryName = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.countryName.isOptional || newValue != "" {
                    currentEntity.countryName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForAddressRegion(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.addressRegion {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.addressRegion = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.addressRegion.isOptional || newValue != "" {
                    currentEntity.addressRegion = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForRegionName(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.regionName {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.regionName = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.regionName.isOptional || newValue != "" {
                    currentEntity.regionName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForContactPostalCode(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.contactPostalCode {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.contactPostalCode = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.contactPostalCode.isOptional || newValue != "" {
                    currentEntity.contactPostalCode = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForIndustry(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.industry {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.industry = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.industry.isOptional || newValue != "" {
                    currentEntity.industry = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForIndustryName(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.industryName {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.industryName = nil
                isNewValueValid = true
            } else {
                if CorporateAccountOriginData.industryName.isOptional || newValue != "" {
                    currentEntity.industryName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForIsObsolete(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccountOriginData, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.isObsolete {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.isObsolete = nil
                isNewValueValid = true
            } else {
                if let validValue = Bool(newValue) {
                    currentEntity.isObsolete = validValue
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

    func createEntityWithDefaultValues() -> CorporateAccountOriginData {
        let newEntity = CorporateAccountOriginData()

        // Key properties without default value should be invalid by default for Create scenario
        if newEntity.corporateAccountOrigin == nil || newEntity.corporateAccountOrigin!.isEmpty {
            self.validity["CorporateAccountOrigin"] = false
        }
        if newEntity.corporateAccountID == nil || newEntity.corporateAccountID!.isEmpty {
            self.validity["CorporateAccountID"] = false
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

extension CorporateAccountOriginDataDetailViewController: EntityUpdaterDelegate {
    func entityHasChanged(_ entityValue: EntityValue?) {
        if let entity = entityValue {
            let currentEntity = entity as! CorporateAccountOriginData
            self.entity = currentEntity
            DispatchQueue.main.async { [weak self] in
                self?.tableView.reloadData()
            }
        }
    }
}
