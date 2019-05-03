// # Proxy Compiler 19.1.3-b8851a-20190408

import Foundation
import SAPOData

internal class APIMKTCORPORATEACCOUNTSRVEntitiesFactory {
    static func registerAll() throws {
        APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.accountTeamMember.registerFactory(ObjectFactory.with(create: { AccountTeamMember(withDefaults: false) }, createWithDecoder: { d in try AccountTeamMember(from: d) }))
        APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.additionalID.registerFactory(ObjectFactory.with(create: { AdditionalID(withDefaults: false) }, createWithDecoder: { d in try AdditionalID(from: d) }))
        APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccount.registerFactory(ObjectFactory.with(create: { CorporateAccount(withDefaults: false) }, createWithDecoder: { d in try CorporateAccount(from: d) }))
        APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.corporateAccountOriginData.registerFactory(ObjectFactory.with(create: { CorporateAccountOriginData(withDefaults: false) }, createWithDecoder: { d in try CorporateAccountOriginData(from: d) }))
        APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingArea.registerFactory(ObjectFactory.with(create: { MarketingArea(withDefaults: false) }, createWithDecoder: { d in try MarketingArea(from: d) }))
        APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingAttribute.registerFactory(ObjectFactory.with(create: { MarketingAttribute(withDefaults: false) }, createWithDecoder: { d in try MarketingAttribute(from: d) }))
        APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntityTypes.marketingPermission.registerFactory(ObjectFactory.with(create: { MarketingPermission(withDefaults: false) }, createWithDecoder: { d in try MarketingPermission(from: d) }))
        APIMKTCORPORATEACCOUNTSRVEntitiesStaticResolver.resolve()
    }
}
