// # Proxy Compiler 19.1.3-b8851a-20190408

import Foundation
import SAPOData

open class AdditionalID: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var corporateAccountOrigin_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.additionalID.property(withName: "CorporateAccountOrigin")

    private static var corporateAccountID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.additionalID.property(withName: "CorporateAccountID")

    private static var interactionContactAdditionalOrigin_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.additionalID.property(withName: "InteractionContactAdditionalOrigin")

    private static var interactionContactAdditionalExternalID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.additionalID.property(withName: "InteractionContactAdditionalExternalID")

    private static var interactionContactAdditionalOriginUUID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.additionalID.property(withName: "InteractionContactAdditionalOriginUUID")

    private static var corporateAccountUUID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.additionalID.property(withName: "CorporateAccountUUID")

    private static var intactnContactAddlIDIsInvalid_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.additionalID.property(withName: "IntactnContactAddlIDIsInvalid")

    private static var marketingAreas_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.additionalID.property(withName: "MarketingAreas")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.additionalID)
    }

    open class func array(from: EntityValueList) -> [AdditionalID] {
        return ArrayConverter.convert(from.toArray(), [AdditionalID]())
    }

    open func copy() -> AdditionalID {
        return CastRequired<AdditionalID>.from(self.copyEntity())
    }

    open class var corporateAccountID: Property {
        get {
            objc_sync_enter(AdditionalID.self)
            defer { objc_sync_exit(AdditionalID.self) }
            do {
                return AdditionalID.corporateAccountID_
            }
        }
        set(value) {
            objc_sync_enter(AdditionalID.self)
            defer { objc_sync_exit(AdditionalID.self) }
            do {
                AdditionalID.corporateAccountID_ = value
            }
        }
    }

    open var corporateAccountID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AdditionalID.corporateAccountID))
        }
        set(value) {
            self.setOptionalValue(for: AdditionalID.corporateAccountID, to: StringValue.of(optional: value))
        }
    }

    open class var corporateAccountOrigin: Property {
        get {
            objc_sync_enter(AdditionalID.self)
            defer { objc_sync_exit(AdditionalID.self) }
            do {
                return AdditionalID.corporateAccountOrigin_
            }
        }
        set(value) {
            objc_sync_enter(AdditionalID.self)
            defer { objc_sync_exit(AdditionalID.self) }
            do {
                AdditionalID.corporateAccountOrigin_ = value
            }
        }
    }

    open var corporateAccountOrigin: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AdditionalID.corporateAccountOrigin))
        }
        set(value) {
            self.setOptionalValue(for: AdditionalID.corporateAccountOrigin, to: StringValue.of(optional: value))
        }
    }

    open class var corporateAccountUUID: Property {
        get {
            objc_sync_enter(AdditionalID.self)
            defer { objc_sync_exit(AdditionalID.self) }
            do {
                return AdditionalID.corporateAccountUUID_
            }
        }
        set(value) {
            objc_sync_enter(AdditionalID.self)
            defer { objc_sync_exit(AdditionalID.self) }
            do {
                AdditionalID.corporateAccountUUID_ = value
            }
        }
    }

    open var corporateAccountUUID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: AdditionalID.corporateAccountUUID))
        }
        set(value) {
            self.setOptionalValue(for: AdditionalID.corporateAccountUUID, to: value)
        }
    }

    open class var intactnContactAddlIDIsInvalid: Property {
        get {
            objc_sync_enter(AdditionalID.self)
            defer { objc_sync_exit(AdditionalID.self) }
            do {
                return AdditionalID.intactnContactAddlIDIsInvalid_
            }
        }
        set(value) {
            objc_sync_enter(AdditionalID.self)
            defer { objc_sync_exit(AdditionalID.self) }
            do {
                AdditionalID.intactnContactAddlIDIsInvalid_ = value
            }
        }
    }

    open var intactnContactAddlIDIsInvalid: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AdditionalID.intactnContactAddlIDIsInvalid))
        }
        set(value) {
            self.setOptionalValue(for: AdditionalID.intactnContactAddlIDIsInvalid, to: BooleanValue.of(optional: value))
        }
    }

    open class var interactionContactAdditionalExternalID: Property {
        get {
            objc_sync_enter(AdditionalID.self)
            defer { objc_sync_exit(AdditionalID.self) }
            do {
                return AdditionalID.interactionContactAdditionalExternalID_
            }
        }
        set(value) {
            objc_sync_enter(AdditionalID.self)
            defer { objc_sync_exit(AdditionalID.self) }
            do {
                AdditionalID.interactionContactAdditionalExternalID_ = value
            }
        }
    }

    open var interactionContactAdditionalExternalID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AdditionalID.interactionContactAdditionalExternalID))
        }
        set(value) {
            self.setOptionalValue(for: AdditionalID.interactionContactAdditionalExternalID, to: StringValue.of(optional: value))
        }
    }

    open class var interactionContactAdditionalOrigin: Property {
        get {
            objc_sync_enter(AdditionalID.self)
            defer { objc_sync_exit(AdditionalID.self) }
            do {
                return AdditionalID.interactionContactAdditionalOrigin_
            }
        }
        set(value) {
            objc_sync_enter(AdditionalID.self)
            defer { objc_sync_exit(AdditionalID.self) }
            do {
                AdditionalID.interactionContactAdditionalOrigin_ = value
            }
        }
    }

    open var interactionContactAdditionalOrigin: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AdditionalID.interactionContactAdditionalOrigin))
        }
        set(value) {
            self.setOptionalValue(for: AdditionalID.interactionContactAdditionalOrigin, to: StringValue.of(optional: value))
        }
    }

    open class var interactionContactAdditionalOriginUUID: Property {
        get {
            objc_sync_enter(AdditionalID.self)
            defer { objc_sync_exit(AdditionalID.self) }
            do {
                return AdditionalID.interactionContactAdditionalOriginUUID_
            }
        }
        set(value) {
            objc_sync_enter(AdditionalID.self)
            defer { objc_sync_exit(AdditionalID.self) }
            do {
                AdditionalID.interactionContactAdditionalOriginUUID_ = value
            }
        }
    }

    open var interactionContactAdditionalOriginUUID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: AdditionalID.interactionContactAdditionalOriginUUID))
        }
        set(value) {
            self.setOptionalValue(for: AdditionalID.interactionContactAdditionalOriginUUID, to: value)
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(corporateAccountOrigin: String?, corporateAccountID: String?, interactionContactAdditionalOrigin: String?, interactionContactAdditionalExternalID: String?) -> EntityKey {
        return EntityKey().with(name: "CorporateAccountOrigin", value: StringValue.of(optional: corporateAccountOrigin)).with(name: "CorporateAccountID", value: StringValue.of(optional: corporateAccountID)).with(name: "InteractionContactAdditionalOrigin", value: StringValue.of(optional: interactionContactAdditionalOrigin)).with(name: "InteractionContactAdditionalExternalID", value: StringValue.of(optional: interactionContactAdditionalExternalID))
    }

    open class var marketingAreas: Property {
        get {
            objc_sync_enter(AdditionalID.self)
            defer { objc_sync_exit(AdditionalID.self) }
            do {
                return AdditionalID.marketingAreas_
            }
        }
        set(value) {
            objc_sync_enter(AdditionalID.self)
            defer { objc_sync_exit(AdditionalID.self) }
            do {
                AdditionalID.marketingAreas_ = value
            }
        }
    }

    open var marketingAreas: [MarketingArea] {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: AdditionalID.marketingAreas)).toArray(), [MarketingArea]())
        }
        set(value) {
            AdditionalID.marketingAreas.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }

    open var old: AdditionalID {
        return CastRequired<AdditionalID>.from(self.oldEntity)
    }
}
