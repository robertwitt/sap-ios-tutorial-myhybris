// # Proxy Compiler 19.1.3-b8851a-20190408

import Foundation
import SAPOData

open class MarketingAttribute: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var corporateAccountOrigin_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingAttribute.property(withName: "CorporateAccountOrigin")

    private static var corporateAccountID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingAttribute.property(withName: "CorporateAccountID")

    private static var marketingAttributeCategory_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingAttribute.property(withName: "MarketingAttributeCategory")

    private static var marketingAttributeValue_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingAttribute.property(withName: "MarketingAttributeValue")

    private static var marketingAttributeUUID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingAttribute.property(withName: "MarketingAttributeUUID")

    private static var corporateAccountUUID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingAttribute.property(withName: "CorporateAccountUUID")

    private static var marketingAttributeCategoryUUID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingAttribute.property(withName: "MarketingAttributeCategoryUUID")

    private static var marketingAttributeCategoryName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingAttribute.property(withName: "MarketingAttributeCategoryName")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingAttribute)
    }

    open class func array(from: EntityValueList) -> [MarketingAttribute] {
        return ArrayConverter.convert(from.toArray(), [MarketingAttribute]())
    }

    open func copy() -> MarketingAttribute {
        return CastRequired<MarketingAttribute>.from(self.copyEntity())
    }

    open class var corporateAccountID: Property {
        get {
            objc_sync_enter(MarketingAttribute.self)
            defer { objc_sync_exit(MarketingAttribute.self) }
            do {
                return MarketingAttribute.corporateAccountID_
            }
        }
        set(value) {
            objc_sync_enter(MarketingAttribute.self)
            defer { objc_sync_exit(MarketingAttribute.self) }
            do {
                MarketingAttribute.corporateAccountID_ = value
            }
        }
    }

    open var corporateAccountID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingAttribute.corporateAccountID))
        }
        set(value) {
            self.setOptionalValue(for: MarketingAttribute.corporateAccountID, to: StringValue.of(optional: value))
        }
    }

    open class var corporateAccountOrigin: Property {
        get {
            objc_sync_enter(MarketingAttribute.self)
            defer { objc_sync_exit(MarketingAttribute.self) }
            do {
                return MarketingAttribute.corporateAccountOrigin_
            }
        }
        set(value) {
            objc_sync_enter(MarketingAttribute.self)
            defer { objc_sync_exit(MarketingAttribute.self) }
            do {
                MarketingAttribute.corporateAccountOrigin_ = value
            }
        }
    }

    open var corporateAccountOrigin: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingAttribute.corporateAccountOrigin))
        }
        set(value) {
            self.setOptionalValue(for: MarketingAttribute.corporateAccountOrigin, to: StringValue.of(optional: value))
        }
    }

    open class var corporateAccountUUID: Property {
        get {
            objc_sync_enter(MarketingAttribute.self)
            defer { objc_sync_exit(MarketingAttribute.self) }
            do {
                return MarketingAttribute.corporateAccountUUID_
            }
        }
        set(value) {
            objc_sync_enter(MarketingAttribute.self)
            defer { objc_sync_exit(MarketingAttribute.self) }
            do {
                MarketingAttribute.corporateAccountUUID_ = value
            }
        }
    }

    open var corporateAccountUUID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: MarketingAttribute.corporateAccountUUID))
        }
        set(value) {
            self.setOptionalValue(for: MarketingAttribute.corporateAccountUUID, to: value)
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(corporateAccountOrigin: String?, corporateAccountID: String?, marketingAttributeCategory: String?, marketingAttributeValue: String?) -> EntityKey {
        return EntityKey().with(name: "CorporateAccountOrigin", value: StringValue.of(optional: corporateAccountOrigin)).with(name: "CorporateAccountID", value: StringValue.of(optional: corporateAccountID)).with(name: "MarketingAttributeCategory", value: StringValue.of(optional: marketingAttributeCategory)).with(name: "MarketingAttributeValue", value: StringValue.of(optional: marketingAttributeValue))
    }

    open class var marketingAttributeCategory: Property {
        get {
            objc_sync_enter(MarketingAttribute.self)
            defer { objc_sync_exit(MarketingAttribute.self) }
            do {
                return MarketingAttribute.marketingAttributeCategory_
            }
        }
        set(value) {
            objc_sync_enter(MarketingAttribute.self)
            defer { objc_sync_exit(MarketingAttribute.self) }
            do {
                MarketingAttribute.marketingAttributeCategory_ = value
            }
        }
    }

    open var marketingAttributeCategory: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingAttribute.marketingAttributeCategory))
        }
        set(value) {
            self.setOptionalValue(for: MarketingAttribute.marketingAttributeCategory, to: StringValue.of(optional: value))
        }
    }

    open class var marketingAttributeCategoryName: Property {
        get {
            objc_sync_enter(MarketingAttribute.self)
            defer { objc_sync_exit(MarketingAttribute.self) }
            do {
                return MarketingAttribute.marketingAttributeCategoryName_
            }
        }
        set(value) {
            objc_sync_enter(MarketingAttribute.self)
            defer { objc_sync_exit(MarketingAttribute.self) }
            do {
                MarketingAttribute.marketingAttributeCategoryName_ = value
            }
        }
    }

    open var marketingAttributeCategoryName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingAttribute.marketingAttributeCategoryName))
        }
        set(value) {
            self.setOptionalValue(for: MarketingAttribute.marketingAttributeCategoryName, to: StringValue.of(optional: value))
        }
    }

    open class var marketingAttributeCategoryUUID: Property {
        get {
            objc_sync_enter(MarketingAttribute.self)
            defer { objc_sync_exit(MarketingAttribute.self) }
            do {
                return MarketingAttribute.marketingAttributeCategoryUUID_
            }
        }
        set(value) {
            objc_sync_enter(MarketingAttribute.self)
            defer { objc_sync_exit(MarketingAttribute.self) }
            do {
                MarketingAttribute.marketingAttributeCategoryUUID_ = value
            }
        }
    }

    open var marketingAttributeCategoryUUID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: MarketingAttribute.marketingAttributeCategoryUUID))
        }
        set(value) {
            self.setOptionalValue(for: MarketingAttribute.marketingAttributeCategoryUUID, to: value)
        }
    }

    open class var marketingAttributeUUID: Property {
        get {
            objc_sync_enter(MarketingAttribute.self)
            defer { objc_sync_exit(MarketingAttribute.self) }
            do {
                return MarketingAttribute.marketingAttributeUUID_
            }
        }
        set(value) {
            objc_sync_enter(MarketingAttribute.self)
            defer { objc_sync_exit(MarketingAttribute.self) }
            do {
                MarketingAttribute.marketingAttributeUUID_ = value
            }
        }
    }

    open var marketingAttributeUUID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: MarketingAttribute.marketingAttributeUUID))
        }
        set(value) {
            self.setOptionalValue(for: MarketingAttribute.marketingAttributeUUID, to: value)
        }
    }

    open class var marketingAttributeValue: Property {
        get {
            objc_sync_enter(MarketingAttribute.self)
            defer { objc_sync_exit(MarketingAttribute.self) }
            do {
                return MarketingAttribute.marketingAttributeValue_
            }
        }
        set(value) {
            objc_sync_enter(MarketingAttribute.self)
            defer { objc_sync_exit(MarketingAttribute.self) }
            do {
                MarketingAttribute.marketingAttributeValue_ = value
            }
        }
    }

    open var marketingAttributeValue: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingAttribute.marketingAttributeValue))
        }
        set(value) {
            self.setOptionalValue(for: MarketingAttribute.marketingAttributeValue, to: StringValue.of(optional: value))
        }
    }

    open var old: MarketingAttribute {
        return CastRequired<MarketingAttribute>.from(self.oldEntity)
    }
}
