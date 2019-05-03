// # Proxy Compiler 19.1.3-b8851a-20190408

import Foundation
import SAPOData

internal class APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser {
    internal static let options: Int = (CSDLOption.allowCaseConflicts | CSDLOption.disableFacetWarnings | CSDLOption.disableNameValidation | CSDLOption.processMixedVersions | CSDLOption.retainOriginalText | CSDLOption.ignoreUndefinedTerms)

    internal static let parsed: CSDLDocument = APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.parse()

    static func parse() -> CSDLDocument {
        let parser = CSDLParser()
        parser.logWarnings = false
        parser.csdlOptions = APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.options
        let metadata = parser.parseInProxy(APIMKTCORPORATEACCOUNTSRVEntitiesMetadataText.xml, url: "API_MKT_CORPORATE_ACCOUNT_SRV")
        metadata.proxyVersion = "19.1.3-b8851a-20190408"
        return metadata
    }
}
