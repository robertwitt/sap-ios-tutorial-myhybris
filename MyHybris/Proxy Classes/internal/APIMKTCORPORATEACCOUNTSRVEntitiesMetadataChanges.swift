// # Proxy Compiler 19.1.3-b8851a-20190408

import Foundation
import SAPOData

internal class APIMKTCORPORATEACCOUNTSRVEntitiesMetadataChanges {
    static func merge(metadata: CSDLDocument) {
        metadata.hasGeneratedProxies = true
        APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.document = metadata
        APIMKTCORPORATEACCOUNTSRVEntitiesMetadataChanges.merge1(metadata: metadata)
        try! APIMKTCORPORATEACCOUNTSRVEntitiesFactory.registerAll()
    }

    private static func merge1(metadata: CSDLDocument) {
        Ignore.valueOf_any(metadata)
        if !APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.accountTeamMember.isRemoved {
            APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.accountTeamMember = metadata.entityType(withName: "API_MKT_CORPORATE_ACCOUNT_SRV.AccountTeamMember")
        }
        if !APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.additionalID.isRemoved {
            APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.additionalID = metadata.entityType(withName: "API_MKT_CORPORATE_ACCOUNT_SRV.AdditionalID")
        }
        if !APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.isRemoved {
            APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount = metadata.entityType(withName: "API_MKT_CORPORATE_ACCOUNT_SRV.CorporateAccount")
        }
        if !APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.isRemoved {
            APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData = metadata.entityType(withName: "API_MKT_CORPORATE_ACCOUNT_SRV.CorporateAccountOriginData")
        }
        if !APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingArea.isRemoved {
            APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingArea = metadata.entityType(withName: "API_MKT_CORPORATE_ACCOUNT_SRV.MarketingArea")
        }
        if !APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingAttribute.isRemoved {
            APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingAttribute = metadata.entityType(withName: "API_MKT_CORPORATE_ACCOUNT_SRV.MarketingAttribute")
        }
        if !APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.isRemoved {
            APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission = metadata.entityType(withName: "API_MKT_CORPORATE_ACCOUNT_SRV.MarketingPermission")
        }
        if !APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.accountTeamMembers.isRemoved {
            APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.accountTeamMembers = metadata.entitySet(withName: "AccountTeamMembers")
        }
        if !APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.additionalIDs.isRemoved {
            APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.additionalIDs = metadata.entitySet(withName: "AdditionalIDs")
        }
        if !APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.corporateAccountOriginData.isRemoved {
            APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.corporateAccountOriginData = metadata.entitySet(withName: "CorporateAccountOriginData")
        }
        if !APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.corporateAccounts.isRemoved {
            APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.corporateAccounts = metadata.entitySet(withName: "CorporateAccounts")
        }
        if !APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.marketingAreas.isRemoved {
            APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.marketingAreas = metadata.entitySet(withName: "MarketingAreas")
        }
        if !APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.marketingAttributes.isRemoved {
            APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.marketingAttributes = metadata.entitySet(withName: "MarketingAttributes")
        }
        if !APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.marketingPermissions.isRemoved {
            APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.marketingPermissions = metadata.entitySet(withName: "MarketingPermissions")
        }
        if !APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corpAcctDeleteAllAccountTeamMembers.isRemoved {
            APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corpAcctDeleteAllAccountTeamMembers = metadata.dataMethod(withName: "CorpAcctDeleteAllAccountTeamMembers")
        }
        if !APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corpAcctOriginDeleteAdditionalIDs.isRemoved {
            APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corpAcctOriginDeleteAdditionalIDs = metadata.dataMethod(withName: "CorpAcctOriginDeleteAdditionalIDs")
        }
        if !APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corpAcctOriginDeleteAllMktgAreas.isRemoved {
            APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corpAcctOriginDeleteAllMktgAreas = metadata.dataMethod(withName: "CorpAcctOriginDeleteAllMktgAreas")
        }
        if !APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corpAcctOriginDeleteAllMktgAttributes.isRemoved {
            APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corpAcctOriginDeleteAllMktgAttributes = metadata.dataMethod(withName: "CorpAcctOriginDeleteAllMktgAttributes")
        }
        if !APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corporateAccountDeleteMarketingArea.isRemoved {
            APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corporateAccountDeleteMarketingArea = metadata.dataMethod(withName: "CorporateAccountDeleteMarketingArea")
        }
        if !AccountTeamMember.corporateAccountOrigin.isRemoved {
            AccountTeamMember.corporateAccountOrigin = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.accountTeamMember.property(withName: "CorporateAccountOrigin")
        }
        if !AccountTeamMember.corporateAccountID.isRemoved {
            AccountTeamMember.corporateAccountID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.accountTeamMember.property(withName: "CorporateAccountID")
        }
        if !AccountTeamMember.teamMemberID.isRemoved {
            AccountTeamMember.teamMemberID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.accountTeamMember.property(withName: "TeamMemberID")
        }
        if !AccountTeamMember.role.isRemoved {
            AccountTeamMember.role = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.accountTeamMember.property(withName: "Role")
        }
        if !AccountTeamMember.teamMemberUUID.isRemoved {
            AccountTeamMember.teamMemberUUID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.accountTeamMember.property(withName: "TeamMemberUUID")
        }
        if !AccountTeamMember.corporateAccountUUID.isRemoved {
            AccountTeamMember.corporateAccountUUID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.accountTeamMember.property(withName: "CorporateAccountUUID")
        }
        if !AccountTeamMember.isOwner.isRemoved {
            AccountTeamMember.isOwner = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.accountTeamMember.property(withName: "IsOwner")
        }
        if !AdditionalID.corporateAccountOrigin.isRemoved {
            AdditionalID.corporateAccountOrigin = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.additionalID.property(withName: "CorporateAccountOrigin")
        }
        if !AdditionalID.corporateAccountID.isRemoved {
            AdditionalID.corporateAccountID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.additionalID.property(withName: "CorporateAccountID")
        }
        if !AdditionalID.interactionContactAdditionalOrigin.isRemoved {
            AdditionalID.interactionContactAdditionalOrigin = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.additionalID.property(withName: "InteractionContactAdditionalOrigin")
        }
        if !AdditionalID.interactionContactAdditionalExternalID.isRemoved {
            AdditionalID.interactionContactAdditionalExternalID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.additionalID.property(withName: "InteractionContactAdditionalExternalID")
        }
        if !AdditionalID.interactionContactAdditionalOriginUUID.isRemoved {
            AdditionalID.interactionContactAdditionalOriginUUID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.additionalID.property(withName: "InteractionContactAdditionalOriginUUID")
        }
        if !AdditionalID.corporateAccountUUID.isRemoved {
            AdditionalID.corporateAccountUUID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.additionalID.property(withName: "CorporateAccountUUID")
        }
        if !AdditionalID.intactnContactAddlIDIsInvalid.isRemoved {
            AdditionalID.intactnContactAddlIDIsInvalid = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.additionalID.property(withName: "IntactnContactAddlIDIsInvalid")
        }
        if !AdditionalID.marketingAreas.isRemoved {
            AdditionalID.marketingAreas = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.additionalID.property(withName: "MarketingAreas")
        }
        if !CorporateAccount.corporateAccountUUID.isRemoved {
            CorporateAccount.corporateAccountUUID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "CorporateAccountUUID")
        }
        if !CorporateAccount.corpAcctIsRlvtForAcctBasedMktg.isRemoved {
            CorporateAccount.corpAcctIsRlvtForAcctBasedMktg = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "CorpAcctIsRlvtForAcctBasedMktg")
        }
        if !CorporateAccount.validationStatus.isRemoved {
            CorporateAccount.validationStatus = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "ValidationStatus")
        }
        if !CorporateAccount.identityIsRemoved.isRemoved {
            CorporateAccount.identityIsRemoved = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "IdentityIsRemoved")
        }
        if !CorporateAccount.validationStatusName.isRemoved {
            CorporateAccount.validationStatusName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "ValidationStatusName")
        }
        if !CorporateAccount.isMarkedForDeletion.isRemoved {
            CorporateAccount.isMarkedForDeletion = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "IsMarkedForDeletion")
        }
        if !CorporateAccount.lastChangeDateTime.isRemoved {
            CorporateAccount.lastChangeDateTime = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "LastChangeDateTime")
        }
        if !CorporateAccount.lastChangedByUser.isRemoved {
            CorporateAccount.lastChangedByUser = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "LastChangedByUser")
        }
        if !CorporateAccount.webSiteURL.isRemoved {
            CorporateAccount.webSiteURL = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "WebSiteURL")
        }
        if !CorporateAccount.creationDateTime.isRemoved {
            CorporateAccount.creationDateTime = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "CreationDateTime")
        }
        if !CorporateAccount.fullName.isRemoved {
            CorporateAccount.fullName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "FullName")
        }
        if !CorporateAccount.createdByUser.isRemoved {
            CorporateAccount.createdByUser = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "CreatedByUser")
        }
        if !CorporateAccount.interactionContactImageURL.isRemoved {
            CorporateAccount.interactionContactImageURL = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "InteractionContactImageURL")
        }
        if !CorporateAccount.latitude.isRemoved {
            CorporateAccount.latitude = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "Latitude")
        }
        if !CorporateAccount.longitude.isRemoved {
            CorporateAccount.longitude = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "Longitude")
        }
        if !CorporateAccount.cityName.isRemoved {
            CorporateAccount.cityName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "CityName")
        }
        if !CorporateAccount.spatialReferenceSystem.isRemoved {
            CorporateAccount.spatialReferenceSystem = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "SpatialReferenceSystem")
        }
        if !CorporateAccount.streetName.isRemoved {
            CorporateAccount.streetName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "StreetName")
        }
        if !CorporateAccount.addressHouseNumber.isRemoved {
            CorporateAccount.addressHouseNumber = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "AddressHouseNumber")
        }
        if !CorporateAccount.language.isRemoved {
            CorporateAccount.language = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "Language")
        }
        if !CorporateAccount.languageName.isRemoved {
            CorporateAccount.languageName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "LanguageName")
        }
        if !CorporateAccount.emailAddress.isRemoved {
            CorporateAccount.emailAddress = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "EmailAddress")
        }
        if !CorporateAccount.phoneNumber.isRemoved {
            CorporateAccount.phoneNumber = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "PhoneNumber")
        }
        if !CorporateAccount.mobileNumber.isRemoved {
            CorporateAccount.mobileNumber = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "MobileNumber")
        }
        if !CorporateAccount.faxNumber.isRemoved {
            CorporateAccount.faxNumber = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "FaxNumber")
        }
        if !CorporateAccount.hasMktgPermissionForDirectMail.isRemoved {
            CorporateAccount.hasMktgPermissionForDirectMail = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "HasMktgPermissionForDirectMail")
        }
        if !CorporateAccount.country.isRemoved {
            CorporateAccount.country = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "Country")
        }
        if !CorporateAccount.countryName.isRemoved {
            CorporateAccount.countryName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "CountryName")
        }
        if !CorporateAccount.addressRegion.isRemoved {
            CorporateAccount.addressRegion = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "AddressRegion")
        }
        if !CorporateAccount.regionName.isRemoved {
            CorporateAccount.regionName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "RegionName")
        }
        if !CorporateAccount.contactPostalCode.isRemoved {
            CorporateAccount.contactPostalCode = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "ContactPostalCode")
        }
        if !CorporateAccount.industry.isRemoved {
            CorporateAccount.industry = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "Industry")
        }
        if !CorporateAccount.industryName.isRemoved {
            CorporateAccount.industryName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "IndustryName")
        }
        if !CorporateAccount.marketingPermissions.isRemoved {
            CorporateAccount.marketingPermissions = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "MarketingPermissions")
        }
        if !CorporateAccount.marketingAreas.isRemoved {
            CorporateAccount.marketingAreas = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "MarketingAreas")
        }
        if !CorporateAccount.accountTeamMembers.isRemoved {
            CorporateAccount.accountTeamMembers = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "AccountTeamMembers")
        }
        if !CorporateAccount.marketingAttributes.isRemoved {
            CorporateAccount.marketingAttributes = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "MarketingAttributes")
        }
        if !CorporateAccount.corporateAccountOriginData.isRemoved {
            CorporateAccount.corporateAccountOriginData = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "CorporateAccountOriginData")
        }
        if !CorporateAccount.additionalIDs.isRemoved {
            CorporateAccount.additionalIDs = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "AdditionalIDs")
        }
        if !CorporateAccountOriginData.corporateAccountOrigin.isRemoved {
            CorporateAccountOriginData.corporateAccountOrigin = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "CorporateAccountOrigin")
        }
        if !CorporateAccountOriginData.corporateAccountID.isRemoved {
            CorporateAccountOriginData.corporateAccountID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "CorporateAccountID")
        }
        if !CorporateAccountOriginData.corpAcctIsRlvtForAcctBasedMktg.isRemoved {
            CorporateAccountOriginData.corpAcctIsRlvtForAcctBasedMktg = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "CorpAcctIsRlvtForAcctBasedMktg")
        }
        if !CorporateAccountOriginData.validationStatus.isRemoved {
            CorporateAccountOriginData.validationStatus = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "ValidationStatus")
        }
        if !CorporateAccountOriginData.validationStatusName.isRemoved {
            CorporateAccountOriginData.validationStatusName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "ValidationStatusName")
        }
        if !CorporateAccountOriginData.isEndOfPurposeBlocked.isRemoved {
            CorporateAccountOriginData.isEndOfPurposeBlocked = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "IsEndOfPurposeBlocked")
        }
        if !CorporateAccountOriginData.trackingID.isRemoved {
            CorporateAccountOriginData.trackingID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "TrackingID")
        }
        if !CorporateAccountOriginData.originDataLastChgUTCDateTime.isRemoved {
            CorporateAccountOriginData.originDataLastChgUTCDateTime = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "OriginDataLastChgUTCDateTime")
        }
        if !CorporateAccountOriginData.lastChangeDateTime.isRemoved {
            CorporateAccountOriginData.lastChangeDateTime = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "LastChangeDateTime")
        }
        if !CorporateAccountOriginData.lastChangedByUser.isRemoved {
            CorporateAccountOriginData.lastChangedByUser = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "LastChangedByUser")
        }
        if !CorporateAccountOriginData.webSiteURL.isRemoved {
            CorporateAccountOriginData.webSiteURL = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "WebSiteURL")
        }
        if !CorporateAccountOriginData.corporateAccountUUID.isRemoved {
            CorporateAccountOriginData.corporateAccountUUID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "CorporateAccountUUID")
        }
        if !CorporateAccountOriginData.creationDateTime.isRemoved {
            CorporateAccountOriginData.creationDateTime = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "CreationDateTime")
        }
        if !CorporateAccountOriginData.createdByUser.isRemoved {
            CorporateAccountOriginData.createdByUser = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "CreatedByUser")
        }
        if !CorporateAccountOriginData.interactionContactImageURL.isRemoved {
            CorporateAccountOriginData.interactionContactImageURL = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "InteractionContactImageURL")
        }
        if !CorporateAccountOriginData.latitude.isRemoved {
            CorporateAccountOriginData.latitude = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "Latitude")
        }
        if !CorporateAccountOriginData.fullName.isRemoved {
            CorporateAccountOriginData.fullName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "FullName")
        }
        if !CorporateAccountOriginData.longitude.isRemoved {
            CorporateAccountOriginData.longitude = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "Longitude")
        }
        if !CorporateAccountOriginData.spatialReferenceSystem.isRemoved {
            CorporateAccountOriginData.spatialReferenceSystem = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "SpatialReferenceSystem")
        }
        if !CorporateAccountOriginData.cityName.isRemoved {
            CorporateAccountOriginData.cityName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "CityName")
        }
        if !CorporateAccountOriginData.streetName.isRemoved {
            CorporateAccountOriginData.streetName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "StreetName")
        }
        if !CorporateAccountOriginData.addressHouseNumber.isRemoved {
            CorporateAccountOriginData.addressHouseNumber = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "AddressHouseNumber")
        }
        if !CorporateAccountOriginData.language.isRemoved {
            CorporateAccountOriginData.language = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "Language")
        }
        if !CorporateAccountOriginData.languageName.isRemoved {
            CorporateAccountOriginData.languageName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "LanguageName")
        }
        if !CorporateAccountOriginData.emailAddress.isRemoved {
            CorporateAccountOriginData.emailAddress = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "EmailAddress")
        }
        if !CorporateAccountOriginData.phoneNumber.isRemoved {
            CorporateAccountOriginData.phoneNumber = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "PhoneNumber")
        }
        if !CorporateAccountOriginData.mobileNumber.isRemoved {
            CorporateAccountOriginData.mobileNumber = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "MobileNumber")
        }
        if !CorporateAccountOriginData.faxNumber.isRemoved {
            CorporateAccountOriginData.faxNumber = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "FaxNumber")
        }
        if !CorporateAccountOriginData.hasMktgPermissionForDirectMail.isRemoved {
            CorporateAccountOriginData.hasMktgPermissionForDirectMail = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "HasMktgPermissionForDirectMail")
        }
        if !CorporateAccountOriginData.country.isRemoved {
            CorporateAccountOriginData.country = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "Country")
        }
        if !CorporateAccountOriginData.countryName.isRemoved {
            CorporateAccountOriginData.countryName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "CountryName")
        }
        if !CorporateAccountOriginData.addressRegion.isRemoved {
            CorporateAccountOriginData.addressRegion = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "AddressRegion")
        }
        if !CorporateAccountOriginData.regionName.isRemoved {
            CorporateAccountOriginData.regionName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "RegionName")
        }
        if !CorporateAccountOriginData.contactPostalCode.isRemoved {
            CorporateAccountOriginData.contactPostalCode = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "ContactPostalCode")
        }
        if !CorporateAccountOriginData.industry.isRemoved {
            CorporateAccountOriginData.industry = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "Industry")
        }
        if !CorporateAccountOriginData.industryName.isRemoved {
            CorporateAccountOriginData.industryName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "IndustryName")
        }
        if !CorporateAccountOriginData.isObsolete.isRemoved {
            CorporateAccountOriginData.isObsolete = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "IsObsolete")
        }
        if !CorporateAccountOriginData.marketingPermissions.isRemoved {
            CorporateAccountOriginData.marketingPermissions = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "MarketingPermissions")
        }
        if !CorporateAccountOriginData.marketingAreas.isRemoved {
            CorporateAccountOriginData.marketingAreas = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "MarketingAreas")
        }
        if !CorporateAccountOriginData.marketingAttributes.isRemoved {
            CorporateAccountOriginData.marketingAttributes = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "MarketingAttributes")
        }
        if !CorporateAccountOriginData.additionalIDs.isRemoved {
            CorporateAccountOriginData.additionalIDs = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "AdditionalIDs")
        }
        if !MarketingArea.corporateAccountOrigin.isRemoved {
            MarketingArea.corporateAccountOrigin = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingArea.property(withName: "CorporateAccountOrigin")
        }
        if !MarketingArea.corporateAccountID.isRemoved {
            MarketingArea.corporateAccountID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingArea.property(withName: "CorporateAccountID")
        }
        if !MarketingArea.interactionContactMktgArea.isRemoved {
            MarketingArea.interactionContactMktgArea = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingArea.property(withName: "InteractionContactMktgArea")
        }
        if !MarketingArea.interactionContactMktgAreaName.isRemoved {
            MarketingArea.interactionContactMktgAreaName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingArea.property(withName: "InteractionContactMktgAreaName")
        }
        if !MarketingArea.corporateAccountUUID.isRemoved {
            MarketingArea.corporateAccountUUID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingArea.property(withName: "CorporateAccountUUID")
        }
        if !MarketingArea.interactionContactAdditionalOriginUUID.isRemoved {
            MarketingArea.interactionContactAdditionalOriginUUID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingArea.property(withName: "InteractionContactAdditionalOriginUUID")
        }
        if !MarketingArea.interactionContactMktgAreaUUID.isRemoved {
            MarketingArea.interactionContactMktgAreaUUID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingArea.property(withName: "InteractionContactMktgAreaUUID")
        }
        if !MarketingAttribute.corporateAccountOrigin.isRemoved {
            MarketingAttribute.corporateAccountOrigin = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingAttribute.property(withName: "CorporateAccountOrigin")
        }
        if !MarketingAttribute.corporateAccountID.isRemoved {
            MarketingAttribute.corporateAccountID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingAttribute.property(withName: "CorporateAccountID")
        }
        if !MarketingAttribute.marketingAttributeCategory.isRemoved {
            MarketingAttribute.marketingAttributeCategory = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingAttribute.property(withName: "MarketingAttributeCategory")
        }
        if !MarketingAttribute.marketingAttributeValue.isRemoved {
            MarketingAttribute.marketingAttributeValue = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingAttribute.property(withName: "MarketingAttributeValue")
        }
        if !MarketingAttribute.marketingAttributeUUID.isRemoved {
            MarketingAttribute.marketingAttributeUUID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingAttribute.property(withName: "MarketingAttributeUUID")
        }
        if !MarketingAttribute.corporateAccountUUID.isRemoved {
            MarketingAttribute.corporateAccountUUID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingAttribute.property(withName: "CorporateAccountUUID")
        }
        if !MarketingAttribute.marketingAttributeCategoryUUID.isRemoved {
            MarketingAttribute.marketingAttributeCategoryUUID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingAttribute.property(withName: "MarketingAttributeCategoryUUID")
        }
        if !MarketingAttribute.marketingAttributeCategoryName.isRemoved {
            MarketingAttribute.marketingAttributeCategoryName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingAttribute.property(withName: "MarketingAttributeCategoryName")
        }
        if !MarketingPermission.corporateAccountID.isRemoved {
            MarketingPermission.corporateAccountID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "CorporateAccountID")
        }
        if !MarketingPermission.corporateAccountOrigin.isRemoved {
            MarketingPermission.corporateAccountOrigin = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "CorporateAccountOrigin")
        }
        if !MarketingPermission.corporateAccountPermissionID.isRemoved {
            MarketingPermission.corporateAccountPermissionID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "CorporateAccountPermissionID")
        }
        if !MarketingPermission.corpAcctPermissionOrigin.isRemoved {
            MarketingPermission.corpAcctPermissionOrigin = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "CorpAcctPermissionOrigin")
        }
        if !MarketingPermission.corpAcctPermissionOriginName.isRemoved {
            MarketingPermission.corpAcctPermissionOriginName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "CorpAcctPermissionOriginName")
        }
        if !MarketingPermission.marketingArea.isRemoved {
            MarketingPermission.marketingArea = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "MarketingArea")
        }
        if !MarketingPermission.marketingAreaName.isRemoved {
            MarketingPermission.marketingAreaName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "MarketingAreaName")
        }
        if !MarketingPermission.communicationMedium.isRemoved {
            MarketingPermission.communicationMedium = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "CommunicationMedium")
        }
        if !MarketingPermission.communicationMediumName.isRemoved {
            MarketingPermission.communicationMediumName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "CommunicationMediumName")
        }
        if !MarketingPermission.communicationCategory.isRemoved {
            MarketingPermission.communicationCategory = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "CommunicationCategory")
        }
        if !MarketingPermission.contactUUID.isRemoved {
            MarketingPermission.contactUUID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "ContactUUID")
        }
        if !MarketingPermission.corporateAccountPermission.isRemoved {
            MarketingPermission.corporateAccountPermission = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "CorporateAccountPermission")
        }
        if !MarketingPermission.permissionUTCDateTime.isRemoved {
            MarketingPermission.permissionUTCDateTime = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionUTCDateTime")
        }
        if !MarketingPermission.communicationDirection.isRemoved {
            MarketingPermission.communicationDirection = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "CommunicationDirection")
        }
        if !MarketingPermission.communicationCategoryName.isRemoved {
            MarketingPermission.communicationCategoryName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "CommunicationCategoryName")
        }
        if !MarketingPermission.permissionSourceObject.isRemoved {
            MarketingPermission.permissionSourceObject = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionSourceObject")
        }
        if !MarketingPermission.permissionSourceObjectType.isRemoved {
            MarketingPermission.permissionSourceObjectType = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionSourceObjectType")
        }
        if !MarketingPermission.permissionSourceSystem.isRemoved {
            MarketingPermission.permissionSourceSystem = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionSourceSystem")
        }
        if !MarketingPermission.permissionSourceSystemType.isRemoved {
            MarketingPermission.permissionSourceSystemType = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionSourceSystemType")
        }
        if !MarketingPermission.permissionSourceDataURL.isRemoved {
            MarketingPermission.permissionSourceDataURL = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionSourceDataURL")
        }
        if !MarketingPermission.permissionSourceCommMedium.isRemoved {
            MarketingPermission.permissionSourceCommMedium = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionSourceCommMedium")
        }
        if !MarketingPermission.permissionSourceCommMediumName.isRemoved {
            MarketingPermission.permissionSourceCommMediumName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionSourceCommMediumName")
        }
        if !MarketingPermission.permissionIsExplicit.isRemoved {
            MarketingPermission.permissionIsExplicit = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionIsExplicit")
        }
        if !MarketingPermission.isConfirmationRequired.isRemoved {
            MarketingPermission.isConfirmationRequired = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "IsConfirmationRequired")
        }
        if !MarketingPermission.permissionLastChangedUserName.isRemoved {
            MarketingPermission.permissionLastChangedUserName = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionLastChangedUserName")
        }
        if !MarketingPermission.permissionLastChangedDateTime.isRemoved {
            MarketingPermission.permissionLastChangedDateTime = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionLastChangedDateTime")
        }
        if !MarketingPermission.permissionUUID.isRemoved {
            MarketingPermission.permissionUUID = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionUUID")
        }
        if !MarketingPermission.permissionNoteText.isRemoved {
            MarketingPermission.permissionNoteText = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionNoteText")
        }
    }
}
