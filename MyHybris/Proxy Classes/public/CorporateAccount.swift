// # Proxy Compiler 19.1.3-b8851a-20190408

import Foundation
import SAPOData

open class CorporateAccount: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var corporateAccountUUID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "CorporateAccountUUID")

    private static var corpAcctIsRlvtForAcctBasedMktg_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "CorpAcctIsRlvtForAcctBasedMktg")

    private static var validationStatus_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "ValidationStatus")

    private static var identityIsRemoved_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "IdentityIsRemoved")

    private static var validationStatusName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "ValidationStatusName")

    private static var isMarkedForDeletion_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "IsMarkedForDeletion")

    private static var lastChangeDateTime_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "LastChangeDateTime")

    private static var lastChangedByUser_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "LastChangedByUser")

    private static var webSiteURL_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "WebSiteURL")

    private static var creationDateTime_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "CreationDateTime")

    private static var fullName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "FullName")

    private static var createdByUser_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "CreatedByUser")

    private static var interactionContactImageURL_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "InteractionContactImageURL")

    private static var latitude_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "Latitude")

    private static var longitude_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "Longitude")

    private static var cityName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "CityName")

    private static var spatialReferenceSystem_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "SpatialReferenceSystem")

    private static var streetName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "StreetName")

    private static var addressHouseNumber_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "AddressHouseNumber")

    private static var language_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "Language")

    private static var languageName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "LanguageName")

    private static var emailAddress_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "EmailAddress")

    private static var phoneNumber_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "PhoneNumber")

    private static var mobileNumber_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "MobileNumber")

    private static var faxNumber_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "FaxNumber")

    private static var hasMktgPermissionForDirectMail_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "HasMktgPermissionForDirectMail")

    private static var country_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "Country")

    private static var countryName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "CountryName")

    private static var addressRegion_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "AddressRegion")

    private static var regionName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "RegionName")

    private static var contactPostalCode_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "ContactPostalCode")

    private static var industry_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "Industry")

    private static var industryName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "IndustryName")

    private static var marketingPermissions_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "MarketingPermissions")

    private static var marketingAreas_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "MarketingAreas")

    private static var accountTeamMembers_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "AccountTeamMembers")

    private static var marketingAttributes_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "MarketingAttributes")

    private static var corporateAccountOriginData_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "CorporateAccountOriginData")

    private static var additionalIDs_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.property(withName: "AdditionalIDs")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount)
    }

    open class var accountTeamMembers: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.accountTeamMembers_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.accountTeamMembers_ = value
            }
        }
    }

    open var accountTeamMembers: [AccountTeamMember] {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: CorporateAccount.accountTeamMembers)).toArray(), [AccountTeamMember]())
        }
        set(value) {
            CorporateAccount.accountTeamMembers.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }

    open class var additionalIDs: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.additionalIDs_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.additionalIDs_ = value
            }
        }
    }

    open var additionalIDs: [AdditionalID] {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: CorporateAccount.additionalIDs)).toArray(), [AdditionalID]())
        }
        set(value) {
            CorporateAccount.additionalIDs.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }

    open class var addressHouseNumber: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.addressHouseNumber_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.addressHouseNumber_ = value
            }
        }
    }

    open var addressHouseNumber: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.addressHouseNumber))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.addressHouseNumber, to: StringValue.of(optional: value))
        }
    }

    open class var addressRegion: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.addressRegion_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.addressRegion_ = value
            }
        }
    }

    open var addressRegion: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.addressRegion))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.addressRegion, to: StringValue.of(optional: value))
        }
    }

    open class func array(from: EntityValueList) -> [CorporateAccount] {
        return ArrayConverter.convert(from.toArray(), [CorporateAccount]())
    }

    open class var cityName: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.cityName_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.cityName_ = value
            }
        }
    }

    open var cityName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.cityName))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.cityName, to: StringValue.of(optional: value))
        }
    }

    open class var contactPostalCode: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.contactPostalCode_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.contactPostalCode_ = value
            }
        }
    }

    open var contactPostalCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.contactPostalCode))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.contactPostalCode, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> CorporateAccount {
        return CastRequired<CorporateAccount>.from(self.copyEntity())
    }

    open class var corpAcctIsRlvtForAcctBasedMktg: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.corpAcctIsRlvtForAcctBasedMktg_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.corpAcctIsRlvtForAcctBasedMktg_ = value
            }
        }
    }

    open var corpAcctIsRlvtForAcctBasedMktg: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: CorporateAccount.corpAcctIsRlvtForAcctBasedMktg))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.corpAcctIsRlvtForAcctBasedMktg, to: BooleanValue.of(optional: value))
        }
    }

    open class var corporateAccountOriginData: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.corporateAccountOriginData_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.corporateAccountOriginData_ = value
            }
        }
    }

    open var corporateAccountOriginData: [CorporateAccountOriginData] {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: CorporateAccount.corporateAccountOriginData)).toArray(), [CorporateAccountOriginData]())
        }
        set(value) {
            CorporateAccount.corporateAccountOriginData.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }

    open class var corporateAccountUUID: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.corporateAccountUUID_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.corporateAccountUUID_ = value
            }
        }
    }

    open var corporateAccountUUID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: CorporateAccount.corporateAccountUUID))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.corporateAccountUUID, to: value)
        }
    }

    open class var country: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.country_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.country_ = value
            }
        }
    }

    open var country: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.country))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.country, to: StringValue.of(optional: value))
        }
    }

    open class var countryName: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.countryName_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.countryName_ = value
            }
        }
    }

    open var countryName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.countryName))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.countryName, to: StringValue.of(optional: value))
        }
    }

    open class var createdByUser: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.createdByUser_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.createdByUser_ = value
            }
        }
    }

    open var createdByUser: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.createdByUser))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.createdByUser, to: StringValue.of(optional: value))
        }
    }

    open class var creationDateTime: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.creationDateTime_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.creationDateTime_ = value
            }
        }
    }

    open var creationDateTime: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: CorporateAccount.creationDateTime))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.creationDateTime, to: value)
        }
    }

    open class var emailAddress: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.emailAddress_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.emailAddress_ = value
            }
        }
    }

    open var emailAddress: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.emailAddress))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.emailAddress, to: StringValue.of(optional: value))
        }
    }

    open class var faxNumber: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.faxNumber_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.faxNumber_ = value
            }
        }
    }

    open var faxNumber: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.faxNumber))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.faxNumber, to: StringValue.of(optional: value))
        }
    }

    open class var fullName: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.fullName_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.fullName_ = value
            }
        }
    }

    open var fullName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.fullName))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.fullName, to: StringValue.of(optional: value))
        }
    }

    open class var hasMktgPermissionForDirectMail: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.hasMktgPermissionForDirectMail_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.hasMktgPermissionForDirectMail_ = value
            }
        }
    }

    open var hasMktgPermissionForDirectMail: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.hasMktgPermissionForDirectMail))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.hasMktgPermissionForDirectMail, to: StringValue.of(optional: value))
        }
    }

    open class var identityIsRemoved: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.identityIsRemoved_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.identityIsRemoved_ = value
            }
        }
    }

    open var identityIsRemoved: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: CorporateAccount.identityIsRemoved))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.identityIsRemoved, to: BooleanValue.of(optional: value))
        }
    }

    open class var industry: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.industry_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.industry_ = value
            }
        }
    }

    open var industry: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.industry))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.industry, to: StringValue.of(optional: value))
        }
    }

    open class var industryName: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.industryName_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.industryName_ = value
            }
        }
    }

    open var industryName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.industryName))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.industryName, to: StringValue.of(optional: value))
        }
    }

    open class var interactionContactImageURL: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.interactionContactImageURL_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.interactionContactImageURL_ = value
            }
        }
    }

    open var interactionContactImageURL: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.interactionContactImageURL))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.interactionContactImageURL, to: StringValue.of(optional: value))
        }
    }

    open class var isMarkedForDeletion: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.isMarkedForDeletion_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.isMarkedForDeletion_ = value
            }
        }
    }

    open var isMarkedForDeletion: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: CorporateAccount.isMarkedForDeletion))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.isMarkedForDeletion, to: BooleanValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(corporateAccountUUID: GuidValue?) -> EntityKey {
        return EntityKey().with(name: "CorporateAccountUUID", value: corporateAccountUUID)
    }

    open class var language: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.language_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.language_ = value
            }
        }
    }

    open var language: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.language))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.language, to: StringValue.of(optional: value))
        }
    }

    open class var languageName: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.languageName_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.languageName_ = value
            }
        }
    }

    open var languageName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.languageName))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.languageName, to: StringValue.of(optional: value))
        }
    }

    open class var lastChangeDateTime: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.lastChangeDateTime_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.lastChangeDateTime_ = value
            }
        }
    }

    open var lastChangeDateTime: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: CorporateAccount.lastChangeDateTime))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.lastChangeDateTime, to: value)
        }
    }

    open class var lastChangedByUser: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.lastChangedByUser_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.lastChangedByUser_ = value
            }
        }
    }

    open var lastChangedByUser: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.lastChangedByUser))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.lastChangedByUser, to: StringValue.of(optional: value))
        }
    }

    open class var latitude: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.latitude_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.latitude_ = value
            }
        }
    }

    open var latitude: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: CorporateAccount.latitude))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.latitude, to: DecimalValue.of(optional: value))
        }
    }

    open class var longitude: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.longitude_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.longitude_ = value
            }
        }
    }

    open var longitude: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: CorporateAccount.longitude))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.longitude, to: DecimalValue.of(optional: value))
        }
    }

    open class var marketingAreas: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.marketingAreas_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.marketingAreas_ = value
            }
        }
    }

    open var marketingAreas: [MarketingArea] {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: CorporateAccount.marketingAreas)).toArray(), [MarketingArea]())
        }
        set(value) {
            CorporateAccount.marketingAreas.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }

    open class var marketingAttributes: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.marketingAttributes_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.marketingAttributes_ = value
            }
        }
    }

    open var marketingAttributes: [MarketingAttribute] {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: CorporateAccount.marketingAttributes)).toArray(), [MarketingAttribute]())
        }
        set(value) {
            CorporateAccount.marketingAttributes.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }

    open class var marketingPermissions: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.marketingPermissions_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.marketingPermissions_ = value
            }
        }
    }

    open var marketingPermissions: [MarketingPermission] {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: CorporateAccount.marketingPermissions)).toArray(), [MarketingPermission]())
        }
        set(value) {
            CorporateAccount.marketingPermissions.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }

    open class var mobileNumber: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.mobileNumber_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.mobileNumber_ = value
            }
        }
    }

    open var mobileNumber: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.mobileNumber))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.mobileNumber, to: StringValue.of(optional: value))
        }
    }

    open var old: CorporateAccount {
        return CastRequired<CorporateAccount>.from(self.oldEntity)
    }

    open class var phoneNumber: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.phoneNumber_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.phoneNumber_ = value
            }
        }
    }

    open var phoneNumber: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.phoneNumber))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.phoneNumber, to: StringValue.of(optional: value))
        }
    }

    open class var regionName: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.regionName_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.regionName_ = value
            }
        }
    }

    open var regionName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.regionName))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.regionName, to: StringValue.of(optional: value))
        }
    }

    open class var spatialReferenceSystem: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.spatialReferenceSystem_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.spatialReferenceSystem_ = value
            }
        }
    }

    open var spatialReferenceSystem: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.spatialReferenceSystem))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.spatialReferenceSystem, to: StringValue.of(optional: value))
        }
    }

    open class var streetName: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.streetName_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.streetName_ = value
            }
        }
    }

    open var streetName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.streetName))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.streetName, to: StringValue.of(optional: value))
        }
    }

    open class var validationStatus: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.validationStatus_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.validationStatus_ = value
            }
        }
    }

    open var validationStatus: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.validationStatus))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.validationStatus, to: StringValue.of(optional: value))
        }
    }

    open class var validationStatusName: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.validationStatusName_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.validationStatusName_ = value
            }
        }
    }

    open var validationStatusName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.validationStatusName))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.validationStatusName, to: StringValue.of(optional: value))
        }
    }

    open class var webSiteURL: Property {
        get {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                return CorporateAccount.webSiteURL_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccount.self)
            defer { objc_sync_exit(CorporateAccount.self) }
            do {
                CorporateAccount.webSiteURL_ = value
            }
        }
    }

    open var webSiteURL: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccount.webSiteURL))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccount.webSiteURL, to: StringValue.of(optional: value))
        }
    }
}
