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

class CorporateAccountDetailViewController: FUIFormTableViewController, SAPFioriLoadingIndicator {
    var apimktcorporateaccountsrvEntities: APIMKTCORPORATEACCOUNTSRVEntities<OnlineODataProvider>!
    private var validity = [String: Bool]()
    private var _entity: CorporateAccount?
    var allowsEditableCells = false
    var entity: CorporateAccount {
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

    private let logger = Logger.shared(named: "CorporateAccountMasterViewControllerLogger")
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
            let detailViewController = dest.viewControllers[0] as! CorporateAccountDetailViewController
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
            return self.cellForCorporateAccountUUID(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.corporateAccountUUID)
        case 1:
            return self.cellForCorpAcctIsRlvtForAcctBasedMktg(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.corpAcctIsRlvtForAcctBasedMktg)
        case 2:
            return self.cellForValidationStatus(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.validationStatus)
        case 3:
            return self.cellForIdentityIsRemoved(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.identityIsRemoved)
        case 4:
            return self.cellForValidationStatusName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.validationStatusName)
        case 5:
            return self.cellForIsMarkedForDeletion(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.isMarkedForDeletion)
        case 6:
            return self.cellForLastChangeDateTime(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.lastChangeDateTime)
        case 7:
            return self.cellForLastChangedByUser(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.lastChangedByUser)
        case 8:
            return self.cellForWebSiteURL(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.webSiteURL)
        case 9:
            return self.cellForCreationDateTime(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.creationDateTime)
        case 10:
            return self.cellForFullName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.fullName)
        case 11:
            return self.cellForCreatedByUser(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.createdByUser)
        case 12:
            return self.cellForInteractionContactImageURL(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.interactionContactImageURL)
        case 13:
            return self.cellForLatitude(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.latitude)
        case 14:
            return self.cellForLongitude(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.longitude)
        case 15:
            return self.cellForCityName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.cityName)
        case 16:
            return self.cellForSpatialReferenceSystem(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.spatialReferenceSystem)
        case 17:
            return self.cellForStreetName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.streetName)
        case 18:
            return self.cellForAddressHouseNumber(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.addressHouseNumber)
        case 19:
            return self.cellForLanguage(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.language)
        case 20:
            return self.cellForLanguageName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.languageName)
        case 21:
            return self.cellForEmailAddress(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.emailAddress)
        case 22:
            return self.cellForPhoneNumber(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.phoneNumber)
        case 23:
            return self.cellForMobileNumber(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.mobileNumber)
        case 24:
            return self.cellForFaxNumber(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.faxNumber)
        case 25:
            return self.cellForHasMktgPermissionForDirectMail(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.hasMktgPermissionForDirectMail)
        case 26:
            return self.cellForCountry(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.country)
        case 27:
            return self.cellForCountryName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.countryName)
        case 28:
            return self.cellForAddressRegion(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.addressRegion)
        case 29:
            return self.cellForRegionName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.regionName)
        case 30:
            return self.cellForContactPostalCode(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.contactPostalCode)
        case 31:
            return self.cellForIndustry(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.industry)
        case 32:
            return self.cellForIndustryName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: CorporateAccount.industryName)
        case 33:
            let cell = CellCreationHelper.cellForDefault(tableView: tableView, indexPath: indexPath, editingIsAllowed: false)
            cell.keyName = "MarketingPermissions"
            if self.entity.isNew {
                cell.keyLabel.textColor = UIColor.lightGray
            }
            cell.value = " "
            cell.accessoryType = .disclosureIndicator
            return cell
        case 34:
            let cell = CellCreationHelper.cellForDefault(tableView: tableView, indexPath: indexPath, editingIsAllowed: false)
            cell.keyName = "MarketingAreas"
            if self.entity.isNew {
                cell.keyLabel.textColor = UIColor.lightGray
            }
            cell.value = " "
            cell.accessoryType = .disclosureIndicator
            return cell
        case 35:
            let cell = CellCreationHelper.cellForDefault(tableView: tableView, indexPath: indexPath, editingIsAllowed: false)
            cell.keyName = "AccountTeamMembers"
            if self.entity.isNew {
                cell.keyLabel.textColor = UIColor.lightGray
            }
            cell.value = " "
            cell.accessoryType = .disclosureIndicator
            return cell
        case 36:
            let cell = CellCreationHelper.cellForDefault(tableView: tableView, indexPath: indexPath, editingIsAllowed: false)
            cell.keyName = "MarketingAttributes"
            if self.entity.isNew {
                cell.keyLabel.textColor = UIColor.lightGray
            }
            cell.value = " "
            cell.accessoryType = .disclosureIndicator
            return cell
        case 37:
            let cell = CellCreationHelper.cellForDefault(tableView: tableView, indexPath: indexPath, editingIsAllowed: false)
            cell.keyName = "CorporateAccountOriginData"
            if self.entity.isNew {
                cell.keyLabel.textColor = UIColor.lightGray
            }
            cell.value = " "
            cell.accessoryType = .disclosureIndicator
            return cell
        case 38:
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
        return 39
    }

    override func tableView(_: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        if indexPath.row < 33 {
            return true
        }
        return false
    }

    override func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        if self.preventNavigationLoop {
            return
        }
        switch indexPath.row {
        case 33:
            if !self.entity.isNew {
                self.showFioriLoadingIndicator()
                let destinationStoryBoard = UIStoryboard(name: "MarketingPermission", bundle: nil)
                var masterViewController = destinationStoryBoard.instantiateViewController(withIdentifier: "MarketingPermissionMaster")
                func loadProperty(_ completionHandler: @escaping ([MarketingPermission]?, Error?) -> Void) {
                    self.apimktcorporateaccountsrvEntities.loadProperty(CorporateAccount.marketingPermissions, into: self.entity) { error in
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
        case 34:
            if !self.entity.isNew {
                self.showFioriLoadingIndicator()
                let destinationStoryBoard = UIStoryboard(name: "MarketingArea", bundle: nil)
                var masterViewController = destinationStoryBoard.instantiateViewController(withIdentifier: "MarketingAreaMaster")
                func loadProperty(_ completionHandler: @escaping ([MarketingArea]?, Error?) -> Void) {
                    self.apimktcorporateaccountsrvEntities.loadProperty(CorporateAccount.marketingAreas, into: self.entity) { error in
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
        case 35:
            if !self.entity.isNew {
                self.showFioriLoadingIndicator()
                let destinationStoryBoard = UIStoryboard(name: "AccountTeamMember", bundle: nil)
                var masterViewController = destinationStoryBoard.instantiateViewController(withIdentifier: "AccountTeamMemberMaster")
                func loadProperty(_ completionHandler: @escaping ([AccountTeamMember]?, Error?) -> Void) {
                    self.apimktcorporateaccountsrvEntities.loadProperty(CorporateAccount.accountTeamMembers, into: self.entity) { error in
                        self.hideFioriLoadingIndicator()
                        if let error = error {
                            completionHandler(nil, error)
                            return
                        }
                        completionHandler(self.entity.accountTeamMembers, nil)
                    }
                }
                (masterViewController as! AccountTeamMemberMasterViewController).loadEntitiesBlock = loadProperty
                masterViewController.navigationItem.title = "AccountTeamMembers"
                (masterViewController as! AccountTeamMemberMasterViewController).preventNavigationLoop = true
                (masterViewController as! AccountTeamMemberMasterViewController).apimktcorporateaccountsrvEntities = apimktcorporateaccountsrvEntities
                self.navigationController?.pushViewController(masterViewController, animated: true)
            }
        case 36:
            if !self.entity.isNew {
                self.showFioriLoadingIndicator()
                let destinationStoryBoard = UIStoryboard(name: "MarketingAttribute", bundle: nil)
                var masterViewController = destinationStoryBoard.instantiateViewController(withIdentifier: "MarketingAttributeMaster")
                func loadProperty(_ completionHandler: @escaping ([MarketingAttribute]?, Error?) -> Void) {
                    self.apimktcorporateaccountsrvEntities.loadProperty(CorporateAccount.marketingAttributes, into: self.entity) { error in
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
        case 37:
            if !self.entity.isNew {
                self.showFioriLoadingIndicator()
                let destinationStoryBoard = UIStoryboard(name: "CorporateAccountOriginData", bundle: nil)
                var masterViewController = destinationStoryBoard.instantiateViewController(withIdentifier: "CorporateAccountOriginDataMaster")
                func loadProperty(_ completionHandler: @escaping ([CorporateAccountOriginData]?, Error?) -> Void) {
                    self.apimktcorporateaccountsrvEntities.loadProperty(CorporateAccount.corporateAccountOriginData, into: self.entity) { error in
                        self.hideFioriLoadingIndicator()
                        if let error = error {
                            completionHandler(nil, error)
                            return
                        }
                        completionHandler(self.entity.corporateAccountOriginData, nil)
                    }
                }
                (masterViewController as! CorporateAccountOriginDataMasterViewController).loadEntitiesBlock = loadProperty
                masterViewController.navigationItem.title = "CorporateAccountOriginData"
                (masterViewController as! CorporateAccountOriginDataMasterViewController).preventNavigationLoop = true
                (masterViewController as! CorporateAccountOriginDataMasterViewController).apimktcorporateaccountsrvEntities = apimktcorporateaccountsrvEntities
                self.navigationController?.pushViewController(masterViewController, animated: true)
            }
        case 38:
            if !self.entity.isNew {
                self.showFioriLoadingIndicator()
                let destinationStoryBoard = UIStoryboard(name: "AdditionalID", bundle: nil)
                var masterViewController = destinationStoryBoard.instantiateViewController(withIdentifier: "AdditionalIDMaster")
                func loadProperty(_ completionHandler: @escaping ([AdditionalID]?, Error?) -> Void) {
                    self.apimktcorporateaccountsrvEntities.loadProperty(CorporateAccount.additionalIDs, into: self.entity) { error in
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

    private func cellForCorporateAccountUUID(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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

    private func cellForCorpAcctIsRlvtForAcctBasedMktg(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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

    private func cellForValidationStatus(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.validationStatus.isOptional || newValue != "" {
                    currentEntity.validationStatus = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForIdentityIsRemoved(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.identityIsRemoved {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.identityIsRemoved = nil
                isNewValueValid = true
            } else {
                if let validValue = Bool(newValue) {
                    currentEntity.identityIsRemoved = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForValidationStatusName(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.validationStatusName.isOptional || newValue != "" {
                    currentEntity.validationStatusName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForIsMarkedForDeletion(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.isMarkedForDeletion {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.isMarkedForDeletion = nil
                isNewValueValid = true
            } else {
                if let validValue = Bool(newValue) {
                    currentEntity.isMarkedForDeletion = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForLastChangeDateTime(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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

    private func cellForLastChangedByUser(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.lastChangedByUser.isOptional || newValue != "" {
                    currentEntity.lastChangedByUser = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForWebSiteURL(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.webSiteURL.isOptional || newValue != "" {
                    currentEntity.webSiteURL = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCreationDateTime(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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

    private func cellForFullName(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.fullName.isOptional || newValue != "" {
                    currentEntity.fullName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCreatedByUser(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.createdByUser.isOptional || newValue != "" {
                    currentEntity.createdByUser = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForInteractionContactImageURL(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.interactionContactImageURL.isOptional || newValue != "" {
                    currentEntity.interactionContactImageURL = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForLatitude(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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

    private func cellForLongitude(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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

    private func cellForCityName(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.cityName.isOptional || newValue != "" {
                    currentEntity.cityName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForSpatialReferenceSystem(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.spatialReferenceSystem.isOptional || newValue != "" {
                    currentEntity.spatialReferenceSystem = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForStreetName(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.streetName.isOptional || newValue != "" {
                    currentEntity.streetName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForAddressHouseNumber(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.addressHouseNumber.isOptional || newValue != "" {
                    currentEntity.addressHouseNumber = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForLanguage(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.language.isOptional || newValue != "" {
                    currentEntity.language = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForLanguageName(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.languageName.isOptional || newValue != "" {
                    currentEntity.languageName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForEmailAddress(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.emailAddress.isOptional || newValue != "" {
                    currentEntity.emailAddress = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPhoneNumber(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.phoneNumber.isOptional || newValue != "" {
                    currentEntity.phoneNumber = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForMobileNumber(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.mobileNumber.isOptional || newValue != "" {
                    currentEntity.mobileNumber = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForFaxNumber(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.faxNumber.isOptional || newValue != "" {
                    currentEntity.faxNumber = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForHasMktgPermissionForDirectMail(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.hasMktgPermissionForDirectMail.isOptional || newValue != "" {
                    currentEntity.hasMktgPermissionForDirectMail = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCountry(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.country.isOptional || newValue != "" {
                    currentEntity.country = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCountryName(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.countryName.isOptional || newValue != "" {
                    currentEntity.countryName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForAddressRegion(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.addressRegion.isOptional || newValue != "" {
                    currentEntity.addressRegion = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForRegionName(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.regionName.isOptional || newValue != "" {
                    currentEntity.regionName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForContactPostalCode(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.contactPostalCode.isOptional || newValue != "" {
                    currentEntity.contactPostalCode = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForIndustry(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.industry.isOptional || newValue != "" {
                    currentEntity.industry = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForIndustryName(tableView: UITableView, indexPath: IndexPath, currentEntity: CorporateAccount, property: Property) -> UITableViewCell {
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
                if CorporateAccount.industryName.isOptional || newValue != "" {
                    currentEntity.industryName = newValue
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

    func createEntityWithDefaultValues() -> CorporateAccount {
        let newEntity = CorporateAccount()

        // Key properties without default value should be invalid by default for Create scenario
        if newEntity.corporateAccountUUID == nil {
            self.validity["CorporateAccountUUID"] = false
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

extension CorporateAccountDetailViewController: EntityUpdaterDelegate {
    func entityHasChanged(_ entityValue: EntityValue?) {
        if let entity = entityValue {
            let currentEntity = entity as! CorporateAccount
            self.entity = currentEntity
            DispatchQueue.main.async { [weak self] in
                self?.tableView.reloadData()
            }
        }
    }
}
