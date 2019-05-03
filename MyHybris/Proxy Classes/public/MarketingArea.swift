// # Proxy Compiler 19.1.3-b8851a-20190408

import Foundation
import SAPOData

open class MarketingArea: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var corporateAccountOrigin_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingArea.property(withName: "CorporateAccountOrigin")

    private static var corporateAccountID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingArea.property(withName: "CorporateAccountID")

    private static var interactionContactMktgArea_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingArea.property(withName: "InteractionContactMktgArea")

    private static var interactionContactMktgAreaName_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingArea.property(withName: "InteractionContactMktgAreaName")

    private static var corporateAccountUUID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingArea.property(withName: "CorporateAccountUUID")

    private static var interactionContactAdditionalOriginUUID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingArea.property(withName: "InteractionContactAdditionalOriginUUID")

    private static var interactionContactMktgAreaUUID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingArea.property(withName: "InteractionContactMktgAreaUUID")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingArea)
    }

    open class func array(from: EntityValueList) -> [MarketingArea] {
        return ArrayConverter.convert(from.toArray(), [MarketingArea]())
    }

    open func copy() -> MarketingArea {
        return CastRequired<MarketingArea>.from(self.copyEntity())
    }

    open class var corporateAccountID: Property {
        get {
            objc_sync_enter(MarketingArea.self)
            defer { objc_sync_exit(MarketingArea.self) }
            do {
                return MarketingArea.corporateAccountID_
            }
        }
        set(value) {
            objc_sync_enter(MarketingArea.self)
            defer { objc_sync_exit(MarketingArea.self) }
            do {
                MarketingArea.corporateAccountID_ = value
            }
        }
    }

    open var corporateAccountID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingArea.corporateAccountID))
        }
        set(value) {
            self.setOptionalValue(for: MarketingArea.corporateAccountID, to: StringValue.of(optional: value))
        }
    }

    open class var corporateAccountOrigin: Property {
        get {
            objc_sync_enter(MarketingArea.self)
            defer { objc_sync_exit(MarketingArea.self) }
            do {
                return MarketingArea.corporateAccountOrigin_
            }
        }
        set(value) {
            objc_sync_enter(MarketingArea.self)
            defer { objc_sync_exit(MarketingArea.self) }
            do {
                MarketingArea.corporateAccountOrigin_ = value
            }
        }
    }

    open var corporateAccountOrigin: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingArea.corporateAccountOrigin))
        }
        set(value) {
            self.setOptionalValue(for: MarketingArea.corporateAccountOrigin, to: StringValue.of(optional: value))
        }
    }

    open class var corporateAccountUUID: Property {
        get {
            objc_sync_enter(MarketingArea.self)
            defer { objc_sync_exit(MarketingArea.self) }
            do {
                return MarketingArea.corporateAccountUUID_
            }
        }
        set(value) {
            objc_sync_enter(MarketingArea.self)
            defer { objc_sync_exit(MarketingArea.self) }
            do {
                MarketingArea.corporateAccountUUID_ = value
            }
        }
    }

    open var corporateAccountUUID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: MarketingArea.corporateAccountUUID))
        }
        set(value) {
            self.setOptionalValue(for: MarketingArea.corporateAccountUUID, to: value)
        }
    }

    open class var interactionContactAdditionalOriginUUID: Property {
        get {
            objc_sync_enter(MarketingArea.self)
            defer { objc_sync_exit(MarketingArea.self) }
            do {
                return MarketingArea.interactionContactAdditionalOriginUUID_
            }
        }
        set(value) {
            objc_sync_enter(MarketingArea.self)
            defer { objc_sync_exit(MarketingArea.self) }
            do {
                MarketingArea.interactionContactAdditionalOriginUUID_ = value
            }
        }
    }

    open var interactionContactAdditionalOriginUUID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: MarketingArea.interactionContactAdditionalOriginUUID))
        }
        set(value) {
            self.setOptionalValue(for: MarketingArea.interactionContactAdditionalOriginUUID, to: value)
        }
    }

    open class var interactionContactMktgArea: Property {
        get {
            objc_sync_enter(MarketingArea.self)
            defer { objc_sync_exit(MarketingArea.self) }
            do {
                return MarketingArea.interactionContactMktgArea_
            }
        }
        set(value) {
            objc_sync_enter(MarketingArea.self)
            defer { objc_sync_exit(MarketingArea.self) }
            do {
                MarketingArea.interactionContactMktgArea_ = value
            }
        }
    }

    open var interactionContactMktgArea: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingArea.interactionContactMktgArea))
        }
        set(value) {
            self.setOptionalValue(for: MarketingArea.interactionContactMktgArea, to: StringValue.of(optional: value))
        }
    }

    open class var interactionContactMktgAreaName: Property {
        get {
            objc_sync_enter(MarketingArea.self)
            defer { objc_sync_exit(MarketingArea.self) }
            do {
                return MarketingArea.interactionContactMktgAreaName_
            }
        }
        set(value) {
            objc_sync_enter(MarketingArea.self)
            defer { objc_sync_exit(MarketingArea.self) }
            do {
                MarketingArea.interactionContactMktgAreaName_ = value
            }
        }
    }

    open var interactionContactMktgAreaName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MarketingArea.interactionContactMktgAreaName))
        }
        set(value) {
            self.setOptionalValue(for: MarketingArea.interactionContactMktgAreaName, to: StringValue.of(optional: value))
        }
    }

    open class var interactionContactMktgAreaUUID: Property {
        get {
            objc_sync_enter(MarketingArea.self)
            defer { objc_sync_exit(MarketingArea.self) }
            do {
                return MarketingArea.interactionContactMktgAreaUUID_
            }
        }
        set(value) {
            objc_sync_enter(MarketingArea.self)
            defer { objc_sync_exit(MarketingArea.self) }
            do {
                MarketingArea.interactionContactMktgAreaUUID_ = value
            }
        }
    }

    open var interactionContactMktgAreaUUID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: MarketingArea.interactionContactMktgAreaUUID))
        }
        set(value) {
            self.setOptionalValue(for: MarketingArea.interactionContactMktgAreaUUID, to: value)
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(corporateAccountOrigin: String?, corporateAccountID: String?, interactionContactMktgArea: String?) -> EntityKey {
        return EntityKey().with(name: "CorporateAccountOrigin", value: StringValue.of(optional: corporateAccountOrigin)).with(name: "CorporateAccountID", value: StringValue.of(optional: corporateAccountID)).with(name: "InteractionContactMktgArea", value: StringValue.of(optional: interactionContactMktgArea))
    }

    open var old: MarketingArea {
        return CastRequired<MarketingArea>.from(self.oldEntity)
    }
}
