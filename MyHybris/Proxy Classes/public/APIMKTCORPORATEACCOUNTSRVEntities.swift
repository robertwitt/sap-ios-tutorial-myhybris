// # Proxy Compiler 19.1.3-b8851a-20190408

import Foundation
import SAPOData

open class APIMKTCORPORATEACCOUNTSRVEntities<Provider: DataServiceProvider>: DataService<Provider> {
    public override init(provider: Provider) {
        super.init(provider: provider)
        self.provider.metadata = APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.document
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAccountTeamMembers")
    open func accountTeamMembers(query: DataQuery = DataQuery()) throws -> [AccountTeamMember] {
        return try self.fetchAccountTeamMembers(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAccountTeamMembers")
    open func accountTeamMembers(query: DataQuery = DataQuery(), completionHandler: @escaping ([AccountTeamMember]?, Error?) -> Void) {
        self.fetchAccountTeamMembers(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAdditionalIDs")
    open func additionalIDs(query: DataQuery = DataQuery()) throws -> [AdditionalID] {
        return try self.fetchAdditionalIDs(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAdditionalIDs")
    open func additionalIDs(query: DataQuery = DataQuery(), completionHandler: @escaping ([AdditionalID]?, Error?) -> Void) {
        self.fetchAdditionalIDs(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    open func corpAcctDeleteAllAccountTeamMembers(corporateAccountOrigin: String?, corporateAccountID: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> CorporateAccount {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<CorporateAccount>.from(self.executeQuery(var_query.invoke(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corpAcctDeleteAllAccountTeamMembers, ParameterList(capacity: 2 as Int).with(name: "CorporateAccountOrigin", value: StringValue.of(optional: corporateAccountOrigin)).with(name: "CorporateAccountID", value: StringValue.of(optional: corporateAccountID))), headers: var_headers, options: var_options).result)
    }

    open func corpAcctDeleteAllAccountTeamMembers(corporateAccountOrigin: String?, corporateAccountID: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (CorporateAccount?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.corpAcctDeleteAllAccountTeamMembers(corporateAccountOrigin: corporateAccountOrigin, corporateAccountID: corporateAccountID, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func corpAcctOriginDeleteAdditionalIDs(corporateAccountOrigin: String?, corporateAccountID: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> CorporateAccountOriginData {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<CorporateAccountOriginData>.from(self.executeQuery(var_query.invoke(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corpAcctOriginDeleteAdditionalIDs, ParameterList(capacity: 2 as Int).with(name: "CorporateAccountOrigin", value: StringValue.of(optional: corporateAccountOrigin)).with(name: "CorporateAccountID", value: StringValue.of(optional: corporateAccountID))), headers: var_headers, options: var_options).result)
    }

    open func corpAcctOriginDeleteAdditionalIDs(corporateAccountOrigin: String?, corporateAccountID: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (CorporateAccountOriginData?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.corpAcctOriginDeleteAdditionalIDs(corporateAccountOrigin: corporateAccountOrigin, corporateAccountID: corporateAccountID, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func corpAcctOriginDeleteAllMktgAreas(corporateAccountOrigin: String?, corporateAccountID: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> CorporateAccountOriginData {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<CorporateAccountOriginData>.from(self.executeQuery(var_query.invoke(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corpAcctOriginDeleteAllMktgAreas, ParameterList(capacity: 2 as Int).with(name: "CorporateAccountOrigin", value: StringValue.of(optional: corporateAccountOrigin)).with(name: "CorporateAccountID", value: StringValue.of(optional: corporateAccountID))), headers: var_headers, options: var_options).result)
    }

    open func corpAcctOriginDeleteAllMktgAreas(corporateAccountOrigin: String?, corporateAccountID: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (CorporateAccountOriginData?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.corpAcctOriginDeleteAllMktgAreas(corporateAccountOrigin: corporateAccountOrigin, corporateAccountID: corporateAccountID, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func corpAcctOriginDeleteAllMktgAttributes(corporateAccountOrigin: String?, corporateAccountID: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> CorporateAccountOriginData {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<CorporateAccountOriginData>.from(self.executeQuery(var_query.invoke(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corpAcctOriginDeleteAllMktgAttributes, ParameterList(capacity: 2 as Int).with(name: "CorporateAccountOrigin", value: StringValue.of(optional: corporateAccountOrigin)).with(name: "CorporateAccountID", value: StringValue.of(optional: corporateAccountID))), headers: var_headers, options: var_options).result)
    }

    open func corpAcctOriginDeleteAllMktgAttributes(corporateAccountOrigin: String?, corporateAccountID: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (CorporateAccountOriginData?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.corpAcctOriginDeleteAllMktgAttributes(corporateAccountOrigin: corporateAccountOrigin, corporateAccountID: corporateAccountID, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func corporateAccountDeleteMarketingArea(interactionContactMktgArea: String?, corporateAccountOrigin: String?, corporateAccountID: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> CorporateAccount {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<CorporateAccount>.from(self.executeQuery(var_query.invoke(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.ActionImports.corporateAccountDeleteMarketingArea, ParameterList(capacity: 3 as Int).with(name: "InteractionContactMktgArea", value: StringValue.of(optional: interactionContactMktgArea)).with(name: "CorporateAccountOrigin", value: StringValue.of(optional: corporateAccountOrigin)).with(name: "CorporateAccountID", value: StringValue.of(optional: corporateAccountID))), headers: var_headers, options: var_options).result)
    }

    open func corporateAccountDeleteMarketingArea(interactionContactMktgArea: String?, corporateAccountOrigin: String?, corporateAccountID: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (CorporateAccount?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.corporateAccountDeleteMarketingArea(interactionContactMktgArea: interactionContactMktgArea, corporateAccountOrigin: corporateAccountOrigin, corporateAccountID: corporateAccountID, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    @available(swift, deprecated: 4.0, renamed: "fetchCorporateAccountOriginData")
    open func corporateAccountOriginData(query: DataQuery = DataQuery()) throws -> [CorporateAccountOriginData] {
        return try self.fetchCorporateAccountOriginData(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchCorporateAccountOriginData")
    open func corporateAccountOriginData(query: DataQuery = DataQuery(), completionHandler: @escaping ([CorporateAccountOriginData]?, Error?) -> Void) {
        self.fetchCorporateAccountOriginData(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchCorporateAccounts")
    open func corporateAccounts(query: DataQuery = DataQuery()) throws -> [CorporateAccount] {
        return try self.fetchCorporateAccounts(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchCorporateAccounts")
    open func corporateAccounts(query: DataQuery = DataQuery(), completionHandler: @escaping ([CorporateAccount]?, Error?) -> Void) {
        self.fetchCorporateAccounts(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    open func fetchAccountTeamMember(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AccountTeamMember {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<AccountTeamMember>.from(self.executeQuery(query.fromDefault(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.accountTeamMembers), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchAccountTeamMember(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AccountTeamMember?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAccountTeamMember(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAccountTeamMemberWithKey(corporateAccountOrigin: String?, corporateAccountID: String?, teamMemberID: String?, role: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AccountTeamMember {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchAccountTeamMember(matching: var_query.withKey(AccountTeamMember.key(corporateAccountOrigin: corporateAccountOrigin, corporateAccountID: corporateAccountID, teamMemberID: teamMemberID, role: role)), headers: headers, options: options)
    }

    open func fetchAccountTeamMemberWithKey(corporateAccountOrigin: String?, corporateAccountID: String?, teamMemberID: String?, role: String?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AccountTeamMember?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAccountTeamMemberWithKey(corporateAccountOrigin: corporateAccountOrigin, corporateAccountID: corporateAccountID, teamMemberID: teamMemberID, role: role, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAccountTeamMembers(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [AccountTeamMember] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try AccountTeamMember.array(from: self.executeQuery(var_query.fromDefault(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.accountTeamMembers), headers: var_headers, options: var_options).entityList())
    }

    open func fetchAccountTeamMembers(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([AccountTeamMember]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAccountTeamMembers(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAdditionalID(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AdditionalID {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<AdditionalID>.from(self.executeQuery(query.fromDefault(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.additionalIDs), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchAdditionalID(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AdditionalID?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAdditionalID(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAdditionalIDWithKey(corporateAccountOrigin: String?, corporateAccountID: String?, interactionContactAdditionalOrigin: String?, interactionContactAdditionalExternalID: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AdditionalID {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchAdditionalID(matching: var_query.withKey(AdditionalID.key(corporateAccountOrigin: corporateAccountOrigin, corporateAccountID: corporateAccountID, interactionContactAdditionalOrigin: interactionContactAdditionalOrigin, interactionContactAdditionalExternalID: interactionContactAdditionalExternalID)), headers: headers, options: options)
    }

    open func fetchAdditionalIDWithKey(corporateAccountOrigin: String?, corporateAccountID: String?, interactionContactAdditionalOrigin: String?, interactionContactAdditionalExternalID: String?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AdditionalID?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAdditionalIDWithKey(corporateAccountOrigin: corporateAccountOrigin, corporateAccountID: corporateAccountID, interactionContactAdditionalOrigin: interactionContactAdditionalOrigin, interactionContactAdditionalExternalID: interactionContactAdditionalExternalID, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAdditionalIDs(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [AdditionalID] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try AdditionalID.array(from: self.executeQuery(var_query.fromDefault(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.additionalIDs), headers: var_headers, options: var_options).entityList())
    }

    open func fetchAdditionalIDs(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([AdditionalID]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchAdditionalIDs(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchCorporateAccount(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> CorporateAccount {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<CorporateAccount>.from(self.executeQuery(query.fromDefault(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.corporateAccounts), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchCorporateAccount(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (CorporateAccount?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchCorporateAccount(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchCorporateAccountOriginData(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [CorporateAccountOriginData] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CorporateAccountOriginData.array(from: self.executeQuery(var_query.fromDefault(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.corporateAccountOriginData), headers: var_headers, options: var_options).entityList())
    }

    open func fetchCorporateAccountOriginData(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([CorporateAccountOriginData]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchCorporateAccountOriginData(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchCorporateAccountOriginData1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> CorporateAccountOriginData {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<CorporateAccountOriginData>.from(self.executeQuery(query.fromDefault(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.corporateAccountOriginData), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchCorporateAccountOriginData1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (CorporateAccountOriginData?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchCorporateAccountOriginData1(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchCorporateAccountOriginData1WithKey(corporateAccountOrigin: String?, corporateAccountID: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> CorporateAccountOriginData {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchCorporateAccountOriginData1(matching: var_query.withKey(CorporateAccountOriginData.key(corporateAccountOrigin: corporateAccountOrigin, corporateAccountID: corporateAccountID)), headers: headers, options: options)
    }

    open func fetchCorporateAccountOriginData1WithKey(corporateAccountOrigin: String?, corporateAccountID: String?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (CorporateAccountOriginData?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchCorporateAccountOriginData1WithKey(corporateAccountOrigin: corporateAccountOrigin, corporateAccountID: corporateAccountID, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchCorporateAccountWithKey(corporateAccountUUID: GuidValue?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> CorporateAccount {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchCorporateAccount(matching: var_query.withKey(CorporateAccount.key(corporateAccountUUID: corporateAccountUUID)), headers: headers, options: options)
    }

    open func fetchCorporateAccountWithKey(corporateAccountUUID: GuidValue?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (CorporateAccount?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchCorporateAccountWithKey(corporateAccountUUID: corporateAccountUUID, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchCorporateAccounts(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [CorporateAccount] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CorporateAccount.array(from: self.executeQuery(var_query.fromDefault(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.corporateAccounts), headers: var_headers, options: var_options).entityList())
    }

    open func fetchCorporateAccounts(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([CorporateAccount]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchCorporateAccounts(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchMarketingArea(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> MarketingArea {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<MarketingArea>.from(self.executeQuery(query.fromDefault(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.marketingAreas), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchMarketingArea(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (MarketingArea?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchMarketingArea(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchMarketingAreaWithKey(corporateAccountOrigin: String?, corporateAccountID: String?, interactionContactMktgArea: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> MarketingArea {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchMarketingArea(matching: var_query.withKey(MarketingArea.key(corporateAccountOrigin: corporateAccountOrigin, corporateAccountID: corporateAccountID, interactionContactMktgArea: interactionContactMktgArea)), headers: headers, options: options)
    }

    open func fetchMarketingAreaWithKey(corporateAccountOrigin: String?, corporateAccountID: String?, interactionContactMktgArea: String?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (MarketingArea?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchMarketingAreaWithKey(corporateAccountOrigin: corporateAccountOrigin, corporateAccountID: corporateAccountID, interactionContactMktgArea: interactionContactMktgArea, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchMarketingAreas(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [MarketingArea] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try MarketingArea.array(from: self.executeQuery(var_query.fromDefault(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.marketingAreas), headers: var_headers, options: var_options).entityList())
    }

    open func fetchMarketingAreas(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([MarketingArea]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchMarketingAreas(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchMarketingAttribute(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> MarketingAttribute {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<MarketingAttribute>.from(self.executeQuery(query.fromDefault(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.marketingAttributes), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchMarketingAttribute(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (MarketingAttribute?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchMarketingAttribute(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchMarketingAttributeWithKey(corporateAccountOrigin: String?, corporateAccountID: String?, marketingAttributeCategory: String?, marketingAttributeValue: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> MarketingAttribute {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchMarketingAttribute(matching: var_query.withKey(MarketingAttribute.key(corporateAccountOrigin: corporateAccountOrigin, corporateAccountID: corporateAccountID, marketingAttributeCategory: marketingAttributeCategory, marketingAttributeValue: marketingAttributeValue)), headers: headers, options: options)
    }

    open func fetchMarketingAttributeWithKey(corporateAccountOrigin: String?, corporateAccountID: String?, marketingAttributeCategory: String?, marketingAttributeValue: String?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (MarketingAttribute?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchMarketingAttributeWithKey(corporateAccountOrigin: corporateAccountOrigin, corporateAccountID: corporateAccountID, marketingAttributeCategory: marketingAttributeCategory, marketingAttributeValue: marketingAttributeValue, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchMarketingAttributes(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [MarketingAttribute] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try MarketingAttribute.array(from: self.executeQuery(var_query.fromDefault(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.marketingAttributes), headers: var_headers, options: var_options).entityList())
    }

    open func fetchMarketingAttributes(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([MarketingAttribute]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchMarketingAttributes(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchMarketingPermission(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> MarketingPermission {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<MarketingPermission>.from(self.executeQuery(query.fromDefault(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.marketingPermissions), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchMarketingPermission(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (MarketingPermission?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchMarketingPermission(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchMarketingPermissionWithKey(corporateAccountID: String?, corporateAccountOrigin: String?, corporateAccountPermissionID: String?, corpAcctPermissionOrigin: String?, marketingArea: String?, communicationMedium: String?, communicationCategory: String?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> MarketingPermission {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchMarketingPermission(matching: var_query.withKey(MarketingPermission.key(corporateAccountID: corporateAccountID, corporateAccountOrigin: corporateAccountOrigin, corporateAccountPermissionID: corporateAccountPermissionID, corpAcctPermissionOrigin: corpAcctPermissionOrigin, marketingArea: marketingArea, communicationMedium: communicationMedium, communicationCategory: communicationCategory)), headers: headers, options: options)
    }

    open func fetchMarketingPermissionWithKey(corporateAccountID: String?, corporateAccountOrigin: String?, corporateAccountPermissionID: String?, corpAcctPermissionOrigin: String?, marketingArea: String?, communicationMedium: String?, communicationCategory: String?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (MarketingPermission?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchMarketingPermissionWithKey(corporateAccountID: corporateAccountID, corporateAccountOrigin: corporateAccountOrigin, corporateAccountPermissionID: corporateAccountPermissionID, corpAcctPermissionOrigin: corpAcctPermissionOrigin, marketingArea: marketingArea, communicationMedium: communicationMedium, communicationCategory: communicationCategory, query: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchMarketingPermissions(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> [MarketingPermission] {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try MarketingPermission.array(from: self.executeQuery(var_query.fromDefault(APIMKTCORPORATEACCOUNTSRVEntitiesMetadata.EntitySets.marketingPermissions), headers: var_headers, options: var_options).entityList())
    }

    open func fetchMarketingPermissions(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping ([MarketingPermission]?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result = try self.fetchMarketingPermissions(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    @available(swift, deprecated: 4.0, renamed: "fetchMarketingAreas")
    open func marketingAreas(query: DataQuery = DataQuery()) throws -> [MarketingArea] {
        return try self.fetchMarketingAreas(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchMarketingAreas")
    open func marketingAreas(query: DataQuery = DataQuery(), completionHandler: @escaping ([MarketingArea]?, Error?) -> Void) {
        self.fetchMarketingAreas(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchMarketingAttributes")
    open func marketingAttributes(query: DataQuery = DataQuery()) throws -> [MarketingAttribute] {
        return try self.fetchMarketingAttributes(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchMarketingAttributes")
    open func marketingAttributes(query: DataQuery = DataQuery(), completionHandler: @escaping ([MarketingAttribute]?, Error?) -> Void) {
        self.fetchMarketingAttributes(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchMarketingPermissions")
    open func marketingPermissions(query: DataQuery = DataQuery()) throws -> [MarketingPermission] {
        return try self.fetchMarketingPermissions(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchMarketingPermissions")
    open func marketingPermissions(query: DataQuery = DataQuery(), completionHandler: @escaping ([MarketingPermission]?, Error?) -> Void) {
        self.fetchMarketingPermissions(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    open override func refreshMetadata() throws {
        objc_sync_enter(self)
        defer { objc_sync_exit(self) }
        do {
            try ProxyInternal.refreshMetadata(service: self, fetcher: nil, options: APIMKTCORPORATEACCOUNTSRVEntitiesMetadataParser.options)
            APIMKTCORPORATEACCOUNTSRVEntitiesMetadataChanges.merge(metadata: self.metadata)
        }
    }
}
