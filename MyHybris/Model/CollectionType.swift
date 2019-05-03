//
// MyHybris
//
// Created by SAP Cloud Platform SDK for iOS Assistant application on 03/05/19
//

import Foundation

enum CollectionType: String {
    case marketingAreas = "MarketingAreas"
    case accountTeamMembers = "AccountTeamMembers"
    case corporateAccounts = "CorporateAccounts"
    case corporateAccountOriginData = "CorporateAccountOriginData"
    case marketingAttributes = "MarketingAttributes"
    case marketingPermissions = "MarketingPermissions"
    case additionalIDs = "AdditionalIDs"
    case none = ""
    static let all = [marketingAreas, accountTeamMembers, corporateAccounts, corporateAccountOriginData, marketingAttributes, marketingPermissions, additionalIDs]
}
