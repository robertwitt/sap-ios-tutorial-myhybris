// # Proxy Compiler 19.1.3-b8851a-20190408

import Foundation
import SAPOData

open class AccountTeamMember: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var corporateAccountOrigin_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.accountTeamMember.property(withName: "CorporateAccountOrigin")

    private static var corporateAccountID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.accountTeamMember.property(withName: "CorporateAccountID")

    private static var teamMemberID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.accountTeamMember.property(withName: "TeamMemberID")

    private static var role_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.accountTeamMember.property(withName: "Role")

    private static var teamMemberUUID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.accountTeamMember.property(withName: "TeamMemberUUID")

    private static var corporateAccountUUID_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.accountTeamMember.property(withName: "CorporateAccountUUID")

    private static var isOwner_: Property = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.accountTeamMember.property(withName: "IsOwner")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.accountTeamMember)
    }

    open class func array(from: EntityValueList) -> [AccountTeamMember] {
        return ArrayConverter.convert(from.toArray(), [AccountTeamMember]())
    }

    open func copy() -> AccountTeamMember {
        return CastRequired<AccountTeamMember>.from(self.copyEntity())
    }

    open class var corporateAccountID: Property {
        get {
            objc_sync_enter(AccountTeamMember.self)
            defer { objc_sync_exit(AccountTeamMember.self) }
            do {
                return AccountTeamMember.corporateAccountID_
            }
        }
        set(value) {
            objc_sync_enter(AccountTeamMember.self)
            defer { objc_sync_exit(AccountTeamMember.self) }
            do {
                AccountTeamMember.corporateAccountID_ = value
            }
        }
    }

    open var corporateAccountID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AccountTeamMember.corporateAccountID))
        }
        set(value) {
            self.setOptionalValue(for: AccountTeamMember.corporateAccountID, to: StringValue.of(optional: value))
        }
    }

    open class var corporateAccountOrigin: Property {
        get {
            objc_sync_enter(AccountTeamMember.self)
            defer { objc_sync_exit(AccountTeamMember.self) }
            do {
                return AccountTeamMember.corporateAccountOrigin_
            }
        }
        set(value) {
            objc_sync_enter(AccountTeamMember.self)
            defer { objc_sync_exit(AccountTeamMember.self) }
            do {
                AccountTeamMember.corporateAccountOrigin_ = value
            }
        }
    }

    open var corporateAccountOrigin: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AccountTeamMember.corporateAccountOrigin))
        }
        set(value) {
            self.setOptionalValue(for: AccountTeamMember.corporateAccountOrigin, to: StringValue.of(optional: value))
        }
    }

    open class var corporateAccountUUID: Property {
        get {
            objc_sync_enter(AccountTeamMember.self)
            defer { objc_sync_exit(AccountTeamMember.self) }
            do {
                return AccountTeamMember.corporateAccountUUID_
            }
        }
        set(value) {
            objc_sync_enter(AccountTeamMember.self)
            defer { objc_sync_exit(AccountTeamMember.self) }
            do {
                AccountTeamMember.corporateAccountUUID_ = value
            }
        }
    }

    open var corporateAccountUUID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: AccountTeamMember.corporateAccountUUID))
        }
        set(value) {
            self.setOptionalValue(for: AccountTeamMember.corporateAccountUUID, to: value)
        }
    }

    open class var isOwner: Property {
        get {
            objc_sync_enter(AccountTeamMember.self)
            defer { objc_sync_exit(AccountTeamMember.self) }
            do {
                return AccountTeamMember.isOwner_
            }
        }
        set(value) {
            objc_sync_enter(AccountTeamMember.self)
            defer { objc_sync_exit(AccountTeamMember.self) }
            do {
                AccountTeamMember.isOwner_ = value
            }
        }
    }

    open var isOwner: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AccountTeamMember.isOwner))
        }
        set(value) {
            self.setOptionalValue(for: AccountTeamMember.isOwner, to: BooleanValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(corporateAccountOrigin: String?, corporateAccountID: String?, teamMemberID: String?, role: String?) -> EntityKey {
        return EntityKey().with(name: "CorporateAccountOrigin", value: StringValue.of(optional: corporateAccountOrigin)).with(name: "CorporateAccountID", value: StringValue.of(optional: corporateAccountID)).with(name: "TeamMemberID", value: StringValue.of(optional: teamMemberID)).with(name: "Role", value: StringValue.of(optional: role))
    }

    open var old: AccountTeamMember {
        return CastRequired<AccountTeamMember>.from(self.oldEntity)
    }

    open class var role: Property {
        get {
            objc_sync_enter(AccountTeamMember.self)
            defer { objc_sync_exit(AccountTeamMember.self) }
            do {
                return AccountTeamMember.role_
            }
        }
        set(value) {
            objc_sync_enter(AccountTeamMember.self)
            defer { objc_sync_exit(AccountTeamMember.self) }
            do {
                AccountTeamMember.role_ = value
            }
        }
    }

    open var role: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AccountTeamMember.role))
        }
        set(value) {
            self.setOptionalValue(for: AccountTeamMember.role, to: StringValue.of(optional: value))
        }
    }

    open class var teamMemberID: Property {
        get {
            objc_sync_enter(AccountTeamMember.self)
            defer { objc_sync_exit(AccountTeamMember.self) }
            do {
                return AccountTeamMember.teamMemberID_
            }
        }
        set(value) {
            objc_sync_enter(AccountTeamMember.self)
            defer { objc_sync_exit(AccountTeamMember.self) }
            do {
                AccountTeamMember.teamMemberID_ = value
            }
        }
    }

    open var teamMemberID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AccountTeamMember.teamMemberID))
        }
        set(value) {
            self.setOptionalValue(for: AccountTeamMember.teamMemberID, to: StringValue.of(optional: value))
        }
    }

    open class var teamMemberUUID: Property {
        get {
            objc_sync_enter(AccountTeamMember.self)
            defer { objc_sync_exit(AccountTeamMember.self) }
            do {
                return AccountTeamMember.teamMemberUUID_
            }
        }
        set(value) {
            objc_sync_enter(AccountTeamMember.self)
            defer { objc_sync_exit(AccountTeamMember.self) }
            do {
                AccountTeamMember.teamMemberUUID_ = value
            }
        }
    }

    open var teamMemberUUID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: AccountTeamMember.teamMemberUUID))
        }
        set(value) {
            self.setOptionalValue(for: AccountTeamMember.teamMemberUUID, to: value)
        }
    }
}
