// # Proxy Compiler 19.1.3-b8851a-20190408

import Foundation
import SAPOData

public class APIMKTCORPORATEACCOUNTSRVEntitiesMetadata {
    private static var document_: CSDLDocument = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.resolve()

    public static var document: CSDLDocument {
        get {
            objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.self)
            defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.self) }
            do {
                return APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.document_
            }
        }
        set(value) {
            objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.self)
            defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.self) }
            do {
                APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.document_ = value
            }
        }
    }

    private static func resolve() -> CSDLDocument {
        try! APIMKTCORPORATEACCOUNTSRVEntitiesFactory.registerAll()
        APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.parsed.hasGeneratedProxies = true
        return APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.parsed
    }

    public class EntityTypes {
        private static var accountTeamMember_: EntityType = APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_MKT_CORPORATE_ACCOUNT_SRV.AccountTeamMember")

        private static var additionalID_: EntityType = APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_MKT_CORPORATE_ACCOUNT_SRV.AdditionalID")

        private static var corporateAccount_: EntityType = APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_MKT_CORPORATE_ACCOUNT_SRV.CorporateAccount")

        private static var corporateAccountOriginData_: EntityType = APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_MKT_CORPORATE_ACCOUNT_SRV.CorporateAccountOriginData")

        private static var marketingArea_: EntityType = APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_MKT_CORPORATE_ACCOUNT_SRV.MarketingArea")

        private static var marketingAttribute_: EntityType = APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_MKT_CORPORATE_ACCOUNT_SRV.MarketingAttribute")

        private static var marketingPermission_: EntityType = APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_MKT_CORPORATE_ACCOUNT_SRV.MarketingPermission")

        public static var accountTeamMember: EntityType {
            get {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.accountTeamMember_
                }
            }
            set(value) {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.accountTeamMember_ = value
                }
            }
        }

        public static var additionalID: EntityType {
            get {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.additionalID_
                }
            }
            set(value) {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.additionalID_ = value
                }
            }
        }

        public static var corporateAccount: EntityType {
            get {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount_
                }
            }
            set(value) {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount_ = value
                }
            }
        }

        public static var corporateAccountOriginData: EntityType {
            get {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData_
                }
            }
            set(value) {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData_ = value
                }
            }
        }

        public static var marketingArea: EntityType {
            get {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingArea_
                }
            }
            set(value) {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingArea_ = value
                }
            }
        }

        public static var marketingAttribute: EntityType {
            get {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingAttribute_
                }
            }
            set(value) {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingAttribute_ = value
                }
            }
        }

        public static var marketingPermission: EntityType {
            get {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    return APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission_
                }
            }
            set(value) {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.self) }
                do {
                    APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission_ = value
                }
            }
        }
    }

    public class EntitySets {
        private static var accountTeamMembers_: EntitySet = APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.parsed.entitySet(withName: "AccountTeamMembers")

        private static var additionalIDs_: EntitySet = APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.parsed.entitySet(withName: "AdditionalIDs")

        private static var corporateAccountOriginData_: EntitySet = APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.parsed.entitySet(withName: "CorporateAccountOriginData")

        private static var corporateAccounts_: EntitySet = APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.parsed.entitySet(withName: "CorporateAccounts")

        private static var marketingAreas_: EntitySet = APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.parsed.entitySet(withName: "MarketingAreas")

        private static var marketingAttributes_: EntitySet = APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.parsed.entitySet(withName: "MarketingAttributes")

        private static var marketingPermissions_: EntitySet = APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.parsed.entitySet(withName: "MarketingPermissions")

        public static var accountTeamMembers: EntitySet {
            get {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.accountTeamMembers_
                }
            }
            set(value) {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.accountTeamMembers_ = value
                }
            }
        }

        public static var additionalIDs: EntitySet {
            get {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.additionalIDs_
                }
            }
            set(value) {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.additionalIDs_ = value
                }
            }
        }

        public static var corporateAccountOriginData: EntitySet {
            get {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.corporateAccountOriginData_
                }
            }
            set(value) {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.corporateAccountOriginData_ = value
                }
            }
        }

        public static var corporateAccounts: EntitySet {
            get {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.corporateAccounts_
                }
            }
            set(value) {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.corporateAccounts_ = value
                }
            }
        }

        public static var marketingAreas: EntitySet {
            get {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.marketingAreas_
                }
            }
            set(value) {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.marketingAreas_ = value
                }
            }
        }

        public static var marketingAttributes: EntitySet {
            get {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.marketingAttributes_
                }
            }
            set(value) {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.marketingAttributes_ = value
                }
            }
        }

        public static var marketingPermissions: EntitySet {
            get {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    return APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.marketingPermissions_
                }
            }
            set(value) {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.self) }
                do {
                    APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.marketingPermissions_ = value
                }
            }
        }
    }

    public class ActionImports {
        private static var corpAcctDeleteAllAccountTeamMembers_: DataMethod = APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.parsed.dataMethod(withName: "CorpAcctDeleteAllAccountTeamMembers")

        private static var corpAcctOriginDeleteAdditionalIDs_: DataMethod = APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.parsed.dataMethod(withName: "CorpAcctOriginDeleteAdditionalIDs")

        private static var corpAcctOriginDeleteAllMktgAreas_: DataMethod = APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.parsed.dataMethod(withName: "CorpAcctOriginDeleteAllMktgAreas")

        private static var corpAcctOriginDeleteAllMktgAttributes_: DataMethod = APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.parsed.dataMethod(withName: "CorpAcctOriginDeleteAllMktgAttributes")

        private static var corporateAccountDeleteMarketingArea_: DataMethod = APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.parsed.dataMethod(withName: "CorporateAccountDeleteMarketingArea")

        public static var corpAcctDeleteAllAccountTeamMembers: DataMethod {
            get {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.self) }
                do {
                    return APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corpAcctDeleteAllAccountTeamMembers_
                }
            }
            set(value) {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.self) }
                do {
                    APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corpAcctDeleteAllAccountTeamMembers_ = value
                }
            }
        }

        public static var corpAcctOriginDeleteAdditionalIDs: DataMethod {
            get {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.self) }
                do {
                    return APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corpAcctOriginDeleteAdditionalIDs_
                }
            }
            set(value) {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.self) }
                do {
                    APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corpAcctOriginDeleteAdditionalIDs_ = value
                }
            }
        }

        public static var corpAcctOriginDeleteAllMktgAreas: DataMethod {
            get {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.self) }
                do {
                    return APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corpAcctOriginDeleteAllMktgAreas_
                }
            }
            set(value) {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.self) }
                do {
                    APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corpAcctOriginDeleteAllMktgAreas_ = value
                }
            }
        }

        public static var corpAcctOriginDeleteAllMktgAttributes: DataMethod {
            get {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.self) }
                do {
                    return APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corpAcctOriginDeleteAllMktgAttributes_
                }
            }
            set(value) {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.self) }
                do {
                    APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corpAcctOriginDeleteAllMktgAttributes_ = value
                }
            }
        }

        public static var corporateAccountDeleteMarketingArea: DataMethod {
            get {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.self) }
                do {
                    return APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corporateAccountDeleteMarketingArea_
                }
            }
            set(value) {
                objc_sync_enter(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.self)
                defer { objc_sync_exit(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.self) }
                do {
                    APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corporateAccountDeleteMarketingArea_ = value
                }
            }
        }
    }
}
