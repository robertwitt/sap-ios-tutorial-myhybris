// # Proxy Compiler 19.1.3-b8851a-20190408

import Foundation
import SAPOData

open class MarketingPermission: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var corporateAccountID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "CorporateAccountID")

    private static var corporateAccountOrigin_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "CorporateAccountOrigin")

    private static var corporateAccountPermissionID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "CorporateAccountPermissionID")

    private static var corpAcctPermissionOrigin_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "CorpAcctPermissionOrigin")

    private static var corpAcctPermissionOriginName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "CorpAcctPermissionOriginName")

    private static var marketingArea_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "MarketingArea")

    private static var marketingAreaName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "MarketingAreaName")

    private static var communicationMedium_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "CommunicationMedium")

    private static var communicationMediumName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "CommunicationMediumName")

    private static var communicationCategory_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "CommunicationCategory")

    private static var contactUUID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "ContactUUID")

    private static var corporateAccountPermission_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "CorporateAccountPermission")

    private static var permissionUTCDateTime_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionUTCDateTime")

    private static var communicationDirection_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "CommunicationDirection")

    private static var communicationCategoryName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "CommunicationCategoryName")

    private static var permissionSourceObject_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionSourceObject")

    private static var permissionSourceObjectType_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionSourceObjectType")

    private static var permissionSourceSystem_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionSourceSystem")

    private static var permissionSourceSystemType_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionSourceSystemType")

    private static var permissionSourceDataURL_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionSourceDataURL")

    private static var permissionSourceCommMedium_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionSourceCommMedium")

    private static var permissionSourceCommMediumName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionSourceCommMediumName")

    private static var permissionIsExplicit_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionIsExplicit")

    private static var isConfirmationRequired_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "IsConfirmationRequired")

    private static var permissionLastChangedUserName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionLastChangedUserName")

    private static var permissionLastChangedDateTime_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionLastChangedDateTime")

    private static var permissionUUID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionUUID")

    private static var permissionNoteText_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.property(withName: "PermissionNoteText")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission)
    }

    open class func array(from: EntityValueList) -> [MarketingPermission] {
        return ArrayConverter.convert(from.toArray(), [MarketingPermission]())
    }

    open class var communicationCategory: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.communicationCategory_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.communicationCategory_ = value
            }
        }
    }

    open var communicationCategory: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingPermission.communicationCategory))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.communicationCategory, to: StringValue.of(optional: value))
        }
    }

    open class var communicationCategoryName: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.communicationCategoryName_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.communicationCategoryName_ = value
            }
        }
    }

    open var communicationCategoryName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingPermission.communicationCategoryName))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.communicationCategoryName, to: StringValue.of(optional: value))
        }
    }

    open class var communicationDirection: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.communicationDirection_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.communicationDirection_ = value
            }
        }
    }

    open var communicationDirection: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingPermission.communicationDirection))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.communicationDirection, to: StringValue.of(optional: value))
        }
    }

    open class var communicationMedium: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.communicationMedium_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.communicationMedium_ = value
            }
        }
    }

    open var communicationMedium: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingPermission.communicationMedium))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.communicationMedium, to: StringValue.of(optional: value))
        }
    }

    open class var communicationMediumName: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.communicationMediumName_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.communicationMediumName_ = value
            }
        }
    }

    open var communicationMediumName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingPermission.communicationMediumName))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.communicationMediumName, to: StringValue.of(optional: value))
        }
    }

    open class var contactUUID: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.contactUUID_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.contactUUID_ = value
            }
        }
    }

    open var contactUUID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: MarketingPermission.contactUUID))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.contactUUID, to: value)
        }
    }

    open func copy() -> MarketingPermission {
        return CastRequired<MarketingPermission>.from(self.copyEntity())
    }

    open class var corpAcctPermissionOrigin: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.corpAcctPermissionOrigin_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.corpAcctPermissionOrigin_ = value
            }
        }
    }

    open var corpAcctPermissionOrigin: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingPermission.corpAcctPermissionOrigin))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.corpAcctPermissionOrigin, to: StringValue.of(optional: value))
        }
    }

    open class var corpAcctPermissionOriginName: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.corpAcctPermissionOriginName_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.corpAcctPermissionOriginName_ = value
            }
        }
    }

    open var corpAcctPermissionOriginName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingPermission.corpAcctPermissionOriginName))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.corpAcctPermissionOriginName, to: StringValue.of(optional: value))
        }
    }

    open class var corporateAccountID: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.corporateAccountID_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.corporateAccountID_ = value
            }
        }
    }

    open var corporateAccountID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingPermission.corporateAccountID))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.corporateAccountID, to: StringValue.of(optional: value))
        }
    }

    open class var corporateAccountOrigin: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.corporateAccountOrigin_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.corporateAccountOrigin_ = value
            }
        }
    }

    open var corporateAccountOrigin: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingPermission.corporateAccountOrigin))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.corporateAccountOrigin, to: StringValue.of(optional: value))
        }
    }

    open class var corporateAccountPermission: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.corporateAccountPermission_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.corporateAccountPermission_ = value
            }
        }
    }

    open var corporateAccountPermission: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingPermission.corporateAccountPermission))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.corporateAccountPermission, to: StringValue.of(optional: value))
        }
    }

    open class var corporateAccountPermissionID: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.corporateAccountPermissionID_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.corporateAccountPermissionID_ = value
            }
        }
    }

    open var corporateAccountPermissionID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingPermission.corporateAccountPermissionID))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.corporateAccountPermissionID, to: StringValue.of(optional: value))
        }
    }

    open class var isConfirmationRequired: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.isConfirmationRequired_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.isConfirmationRequired_ = value
            }
        }
    }

    open var isConfirmationRequired: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: MarketingPermission.isConfirmationRequired))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.isConfirmationRequired, to: BooleanValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(corporateAccountID: String?, corporateAccountOrigin: String?, corporateAccountPermissionID: String?, corpAcctPermissionOrigin: String?, marketingArea: String?, communicationMedium: String?, communicationCategory: String?) -> EntityKey {
        return EntityKey().with(name: "CorporateAccountID", value: StringValue.of(optional: corporateAccountID)).with(name: "CorporateAccountOrigin", value: StringValue.of(optional: corporateAccountOrigin)).with(name: "CorporateAccountPermissionID", value: StringValue.of(optional: corporateAccountPermissionID)).with(name: "CorpAcctPermissionOrigin", value: StringValue.of(optional: corpAcctPermissionOrigin)).with(name: "MarketingArea", value: StringValue.of(optional: marketingArea)).with(name: "CommunicationMedium", value: StringValue.of(optional: communicationMedium)).with(name: "CommunicationCategory", value: StringValue.of(optional: communicationCategory))
    }

    open class var marketingArea: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.marketingArea_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.marketingArea_ = value
            }
        }
    }

    open var marketingArea: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingPermission.marketingArea))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.marketingArea, to: StringValue.of(optional: value))
        }
    }

    open class var marketingAreaName: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.marketingAreaName_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.marketingAreaName_ = value
            }
        }
    }

    open var marketingAreaName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingPermission.marketingAreaName))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.marketingAreaName, to: StringValue.of(optional: value))
        }
    }

    open var old: MarketingPermission {
        return CastRequired<MarketingPermission>.from(self.oldEntity)
    }

    open class var permissionIsExplicit: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.permissionIsExplicit_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.permissionIsExplicit_ = value
            }
        }
    }

    open var permissionIsExplicit: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: MarketingPermission.permissionIsExplicit))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.permissionIsExplicit, to: BooleanValue.of(optional: value))
        }
    }

    open class var permissionLastChangedDateTime: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.permissionLastChangedDateTime_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.permissionLastChangedDateTime_ = value
            }
        }
    }

    open var permissionLastChangedDateTime: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: MarketingPermission.permissionLastChangedDateTime))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.permissionLastChangedDateTime, to: value)
        }
    }

    open class var permissionLastChangedUserName: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.permissionLastChangedUserName_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.permissionLastChangedUserName_ = value
            }
        }
    }

    open var permissionLastChangedUserName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingPermission.permissionLastChangedUserName))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.permissionLastChangedUserName, to: StringValue.of(optional: value))
        }
    }

    open class var permissionNoteText: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.permissionNoteText_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.permissionNoteText_ = value
            }
        }
    }

    open var permissionNoteText: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingPermission.permissionNoteText))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.permissionNoteText, to: StringValue.of(optional: value))
        }
    }

    open class var permissionSourceCommMedium: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.permissionSourceCommMedium_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.permissionSourceCommMedium_ = value
            }
        }
    }

    open var permissionSourceCommMedium: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingPermission.permissionSourceCommMedium))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.permissionSourceCommMedium, to: StringValue.of(optional: value))
        }
    }

    open class var permissionSourceCommMediumName: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.permissionSourceCommMediumName_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.permissionSourceCommMediumName_ = value
            }
        }
    }

    open var permissionSourceCommMediumName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingPermission.permissionSourceCommMediumName))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.permissionSourceCommMediumName, to: StringValue.of(optional: value))
        }
    }

    open class var permissionSourceDataURL: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.permissionSourceDataURL_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.permissionSourceDataURL_ = value
            }
        }
    }

    open var permissionSourceDataURL: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingPermission.permissionSourceDataURL))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.permissionSourceDataURL, to: StringValue.of(optional: value))
        }
    }

    open class var permissionSourceObject: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.permissionSourceObject_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.permissionSourceObject_ = value
            }
        }
    }

    open var permissionSourceObject: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingPermission.permissionSourceObject))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.permissionSourceObject, to: StringValue.of(optional: value))
        }
    }

    open class var permissionSourceObjectType: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.permissionSourceObjectType_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.permissionSourceObjectType_ = value
            }
        }
    }

    open var permissionSourceObjectType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingPermission.permissionSourceObjectType))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.permissionSourceObjectType, to: StringValue.of(optional: value))
        }
    }

    open class var permissionSourceSystem: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.permissionSourceSystem_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.permissionSourceSystem_ = value
            }
        }
    }

    open var permissionSourceSystem: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingPermission.permissionSourceSystem))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.permissionSourceSystem, to: StringValue.of(optional: value))
        }
    }

    open class var permissionSourceSystemType: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.permissionSourceSystemType_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.permissionSourceSystemType_ = value
            }
        }
    }

    open var permissionSourceSystemType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingPermission.permissionSourceSystemType))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.permissionSourceSystemType, to: StringValue.of(optional: value))
        }
    }

    open class var permissionUTCDateTime: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.permissionUTCDateTime_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.permissionUTCDateTime_ = value
            }
        }
    }

    open var permissionUTCDateTime: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: MarketingPermission.permissionUTCDateTime))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.permissionUTCDateTime, to: value)
        }
    }

    open class var permissionUUID: Property {
        get {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                return MarketingPermission.permissionUUID_
            }
        }
        set(value) {
            objc_sync_enter(MarketingPermission.self)
            defer { objc_sync_exit(MarketingPermission.self) }
            do {
                MarketingPermission.permissionUUID_ = value
            }
        }
    }

    open var permissionUUID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: MarketingPermission.permissionUUID))
        }
        set(value) {
            self.setOptionalValue(for: MarketingPermission.permissionUUID, to: value)
        }
    }
}
