// # Proxy Compiler 19.1.3-b8851a-20190408

import Foundation
import SAPOData

open class CorporateAccountOriginData: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var corporateAccountOrigin_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "CorporateAccountOrigin")

    private static var corporateAccountID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "CorporateAccountID")

    private static var corpAcctIsRlvtForAcctBasedMktg_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "CorpAcctIsRlvtForAcctBasedMktg")

    private static var validationStatus_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "ValidationStatus")

    private static var validationStatusName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "ValidationStatusName")

    private static var isEndOfPurposeBlocked_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "IsEndOfPurposeBlocked")

    private static var trackingID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "TrackingID")

    private static var originDataLastChgUTCDateTime_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "OriginDataLastChgUTCDateTime")

    private static var lastChangeDateTime_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "LastChangeDateTime")

    private static var lastChangedByUser_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "LastChangedByUser")

    private static var webSiteURL_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "WebSiteURL")

    private static var corporateAccountUUID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "CorporateAccountUUID")

    private static var creationDateTime_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "CreationDateTime")

    private static var createdByUser_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "CreatedByUser")

    private static var interactionContactImageURL_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "InteractionContactImageURL")

    private static var latitude_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "Latitude")

    private static var fullName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "FullName")

    private static var longitude_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "Longitude")

    private static var spatialReferenceSystem_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "SpatialReferenceSystem")

    private static var cityName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "CityName")

    private static var streetName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "StreetName")

    private static var addressHouseNumber_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "AddressHouseNumber")

    private static var language_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "Language")

    private static var languageName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "LanguageName")

    private static var emailAddress_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "EmailAddress")

    private static var phoneNumber_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "PhoneNumber")

    private static var mobileNumber_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "MobileNumber")

    private static var faxNumber_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "FaxNumber")

    private static var hasMktgPermissionForDirectMail_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "HasMktgPermissionForDirectMail")

    private static var country_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "Country")

    private static var countryName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "CountryName")

    private static var addressRegion_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "AddressRegion")

    private static var regionName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "RegionName")

    private static var contactPostalCode_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "ContactPostalCode")

    private static var industry_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "Industry")

    private static var industryName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "IndustryName")

    private static var isObsolete_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "IsObsolete")

    private static var marketingPermissions_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "MarketingPermissions")

    private static var marketingAreas_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "MarketingAreas")

    private static var marketingAttributes_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "MarketingAttributes")

    private static var additionalIDs_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.property(withName: "AdditionalIDs")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData)
    }

    open class var additionalIDs: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.additionalIDs_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.additionalIDs_ = value
            }
        }
    }

    open var additionalIDs: [AdditionalID] {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: CorporateAccountOriginData.additionalIDs)).toArray(), [AdditionalID]())
        }
        set(value) {
            CorporateAccountOriginData.additionalIDs.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }

    open class var addressHouseNumber: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.addressHouseNumber_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.addressHouseNumber_ = value
            }
        }
    }

    open var addressHouseNumber: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.addressHouseNumber))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.addressHouseNumber, to: StringValue.of(optional: value))
        }
    }

    open class var addressRegion: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.addressRegion_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.addressRegion_ = value
            }
        }
    }

    open var addressRegion: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.addressRegion))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.addressRegion, to: StringValue.of(optional: value))
        }
    }

    open class func array(from: EntityValueList) -> [CorporateAccountOriginData] {
        return ArrayConverter.convert(from.toArray(), [CorporateAccountOriginData]())
    }

    open class var cityName: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.cityName_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.cityName_ = value
            }
        }
    }

    open var cityName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.cityName))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.cityName, to: StringValue.of(optional: value))
        }
    }

    open class var contactPostalCode: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.contactPostalCode_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.contactPostalCode_ = value
            }
        }
    }

    open var contactPostalCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.contactPostalCode))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.contactPostalCode, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> CorporateAccountOriginData {
        return CastRequired<CorporateAccountOriginData>.from(self.copyEntity())
    }

    open class var corpAcctIsRlvtForAcctBasedMktg: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.corpAcctIsRlvtForAcctBasedMktg_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.corpAcctIsRlvtForAcctBasedMktg_ = value
            }
        }
    }

    open var corpAcctIsRlvtForAcctBasedMktg: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: CorporateAccountOriginData.corpAcctIsRlvtForAcctBasedMktg))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.corpAcctIsRlvtForAcctBasedMktg, to: BooleanValue.of(optional: value))
        }
    }

    open class var corporateAccountID: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.corporateAccountID_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.corporateAccountID_ = value
            }
        }
    }

    open var corporateAccountID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.corporateAccountID))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.corporateAccountID, to: StringValue.of(optional: value))
        }
    }

    open class var corporateAccountOrigin: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.corporateAccountOrigin_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.corporateAccountOrigin_ = value
            }
        }
    }

    open var corporateAccountOrigin: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.corporateAccountOrigin))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.corporateAccountOrigin, to: StringValue.of(optional: value))
        }
    }

    open class var corporateAccountUUID: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.corporateAccountUUID_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.corporateAccountUUID_ = value
            }
        }
    }

    open var corporateAccountUUID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: CorporateAccountOriginData.corporateAccountUUID))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.corporateAccountUUID, to: value)
        }
    }

    open class var country: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.country_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.country_ = value
            }
        }
    }

    open var country: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.country))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.country, to: StringValue.of(optional: value))
        }
    }

    open class var countryName: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.countryName_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.countryName_ = value
            }
        }
    }

    open var countryName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.countryName))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.countryName, to: StringValue.of(optional: value))
        }
    }

    open class var createdByUser: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.createdByUser_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.createdByUser_ = value
            }
        }
    }

    open var createdByUser: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.createdByUser))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.createdByUser, to: StringValue.of(optional: value))
        }
    }

    open class var creationDateTime: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.creationDateTime_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.creationDateTime_ = value
            }
        }
    }

    open var creationDateTime: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: CorporateAccountOriginData.creationDateTime))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.creationDateTime, to: value)
        }
    }

    open class var emailAddress: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.emailAddress_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.emailAddress_ = value
            }
        }
    }

    open var emailAddress: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.emailAddress))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.emailAddress, to: StringValue.of(optional: value))
        }
    }

    open class var faxNumber: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.faxNumber_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.faxNumber_ = value
            }
        }
    }

    open var faxNumber: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.faxNumber))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.faxNumber, to: StringValue.of(optional: value))
        }
    }

    open class var fullName: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.fullName_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.fullName_ = value
            }
        }
    }

    open var fullName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.fullName))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.fullName, to: StringValue.of(optional: value))
        }
    }

    open class var hasMktgPermissionForDirectMail: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.hasMktgPermissionForDirectMail_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.hasMktgPermissionForDirectMail_ = value
            }
        }
    }

    open var hasMktgPermissionForDirectMail: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.hasMktgPermissionForDirectMail))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.hasMktgPermissionForDirectMail, to: StringValue.of(optional: value))
        }
    }

    open class var industry: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.industry_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.industry_ = value
            }
        }
    }

    open var industry: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.industry))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.industry, to: StringValue.of(optional: value))
        }
    }

    open class var industryName: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.industryName_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.industryName_ = value
            }
        }
    }

    open var industryName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.industryName))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.industryName, to: StringValue.of(optional: value))
        }
    }

    open class var interactionContactImageURL: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.interactionContactImageURL_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.interactionContactImageURL_ = value
            }
        }
    }

    open var interactionContactImageURL: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.interactionContactImageURL))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.interactionContactImageURL, to: StringValue.of(optional: value))
        }
    }

    open class var isEndOfPurposeBlocked: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.isEndOfPurposeBlocked_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.isEndOfPurposeBlocked_ = value
            }
        }
    }

    open var isEndOfPurposeBlocked: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: CorporateAccountOriginData.isEndOfPurposeBlocked))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.isEndOfPurposeBlocked, to: BooleanValue.of(optional: value))
        }
    }

    open class var isObsolete: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.isObsolete_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.isObsolete_ = value
            }
        }
    }

    open var isObsolete: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: CorporateAccountOriginData.isObsolete))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.isObsolete, to: BooleanValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(corporateAccountOrigin: String?, corporateAccountID: String?) -> EntityKey {
        return EntityKey().with(name: "CorporateAccountOrigin", value: StringValue.of(optional: corporateAccountOrigin)).with(name: "CorporateAccountID", value: StringValue.of(optional: corporateAccountID))
    }

    open class var language: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.language_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.language_ = value
            }
        }
    }

    open var language: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.language))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.language, to: StringValue.of(optional: value))
        }
    }

    open class var languageName: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.languageName_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.languageName_ = value
            }
        }
    }

    open var languageName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.languageName))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.languageName, to: StringValue.of(optional: value))
        }
    }

    open class var lastChangeDateTime: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.lastChangeDateTime_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.lastChangeDateTime_ = value
            }
        }
    }

    open var lastChangeDateTime: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: CorporateAccountOriginData.lastChangeDateTime))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.lastChangeDateTime, to: value)
        }
    }

    open class var lastChangedByUser: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.lastChangedByUser_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.lastChangedByUser_ = value
            }
        }
    }

    open var lastChangedByUser: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.lastChangedByUser))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.lastChangedByUser, to: StringValue.of(optional: value))
        }
    }

    open class var latitude: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.latitude_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.latitude_ = value
            }
        }
    }

    open var latitude: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: CorporateAccountOriginData.latitude))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.latitude, to: DecimalValue.of(optional: value))
        }
    }

    open class var longitude: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.longitude_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.longitude_ = value
            }
        }
    }

    open var longitude: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: CorporateAccountOriginData.longitude))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.longitude, to: DecimalValue.of(optional: value))
        }
    }

    open class var marketingAreas: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.marketingAreas_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.marketingAreas_ = value
            }
        }
    }

    open var marketingAreas: [MarketingArea] {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: CorporateAccountOriginData.marketingAreas)).toArray(), [MarketingArea]())
        }
        set(value) {
            CorporateAccountOriginData.marketingAreas.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }

    open class var marketingAttributes: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.marketingAttributes_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.marketingAttributes_ = value
            }
        }
    }

    open var marketingAttributes: [MarketingAttribute] {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: CorporateAccountOriginData.marketingAttributes)).toArray(), [MarketingAttribute]())
        }
        set(value) {
            CorporateAccountOriginData.marketingAttributes.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }

    open class var marketingPermissions: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.marketingPermissions_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.marketingPermissions_ = value
            }
        }
    }

    open var marketingPermissions: [MarketingPermission] {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: CorporateAccountOriginData.marketingPermissions)).toArray(), [MarketingPermission]())
        }
        set(value) {
            CorporateAccountOriginData.marketingPermissions.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }

    open class var mobileNumber: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.mobileNumber_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.mobileNumber_ = value
            }
        }
    }

    open var mobileNumber: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.mobileNumber))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.mobileNumber, to: StringValue.of(optional: value))
        }
    }

    open var old: CorporateAccountOriginData {
        return CastRequired<CorporateAccountOriginData>.from(self.oldEntity)
    }

    open class var originDataLastChgUTCDateTime: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.originDataLastChgUTCDateTime_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.originDataLastChgUTCDateTime_ = value
            }
        }
    }

    open var originDataLastChgUTCDateTime: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: CorporateAccountOriginData.originDataLastChgUTCDateTime))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.originDataLastChgUTCDateTime, to: value)
        }
    }

    open class var phoneNumber: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.phoneNumber_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.phoneNumber_ = value
            }
        }
    }

    open var phoneNumber: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.phoneNumber))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.phoneNumber, to: StringValue.of(optional: value))
        }
    }

    open class var regionName: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.regionName_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.regionName_ = value
            }
        }
    }

    open var regionName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.regionName))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.regionName, to: StringValue.of(optional: value))
        }
    }

    open class var spatialReferenceSystem: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.spatialReferenceSystem_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.spatialReferenceSystem_ = value
            }
        }
    }

    open var spatialReferenceSystem: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.spatialReferenceSystem))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.spatialReferenceSystem, to: StringValue.of(optional: value))
        }
    }

    open class var streetName: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.streetName_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.streetName_ = value
            }
        }
    }

    open var streetName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.streetName))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.streetName, to: StringValue.of(optional: value))
        }
    }

    open class var trackingID: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.trackingID_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.trackingID_ = value
            }
        }
    }

    open var trackingID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.trackingID))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.trackingID, to: StringValue.of(optional: value))
        }
    }

    open class var validationStatus: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.validationStatus_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.validationStatus_ = value
            }
        }
    }

    open var validationStatus: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.validationStatus))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.validationStatus, to: StringValue.of(optional: value))
        }
    }

    open class var validationStatusName: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.validationStatusName_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.validationStatusName_ = value
            }
        }
    }

    open var validationStatusName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.validationStatusName))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.validationStatusName, to: StringValue.of(optional: value))
        }
    }

    open class var webSiteURL: Property {
        get {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                return CorporateAccountOriginData.webSiteURL_
            }
        }
        set(value) {
            objc_sync_enter(CorporateAccountOriginData.self)
            defer { objc_sync_exit(CorporateAccountOriginData.self) }
            do {
                CorporateAccountOriginData.webSiteURL_ = value
            }
        }
    }

    open var webSiteURL: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CorporateAccountOriginData.webSiteURL))
        }
        set(value) {
            self.setOptionalValue(for: CorporateAccountOriginData.webSiteURL, to: StringValue.of(optional: value))
        }
    }
}
