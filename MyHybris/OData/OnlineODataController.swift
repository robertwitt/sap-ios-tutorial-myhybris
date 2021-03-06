//
// MyHybris
//
// Created by SAP Cloud Platform SDK for iOS Assistant application on 03/05/19
//

import Foundation
import SAPCommon
import SAPFiori
import SAPFioriFlows
import SAPFoundation
import SAPOData

public class OnlineODataController {
    private let logger = Logger.shared(named: "OnlineODataController")
    var apimktcorporateaccountsrvEntities: APIMKTCORPORATEACCOUNTSRVEntities<OnlineODataProvider>!

    public init() {}

    // MARK: - Public methods

    // Read more about consumption of OData services in mobile applications: https://help.sap.com/viewer/fc1a59c210d848babfb3f758a6f55cb1/Latest/en-US/22e9533533c646d8831e87357519cf4e.html
    public func configureOData(sapURLSession: SAPURLSession, serviceRoot: URL) throws {
        let odataProvider = OnlineODataProvider(serviceName: "APIMKTCORPORATEACCOUNTSRVEntities", serviceRoot: serviceRoot, sapURLSession: sapURLSession)
        // Disables version validation of the backend OData service
        #warning("Should only be used in demo and test applications")
        odataProvider.serviceOptions.checkVersion = false
        self.apimktcorporateaccountsrvEntities = APIMKTCORPORATEACCOUNTSRVEntities(provider: odataProvider)
        // To update entity force to use X-HTTP-Method header
        self.apimktcorporateaccountsrvEntities.provider.networkOptions.tunneledMethods.append("MERGE")
    }
}
