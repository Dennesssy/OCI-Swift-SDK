import Foundation

// MARK: - ListCredentialExecuteGranteesRequest

public struct ListCredentialExecuteGranteesRequest: Codable, Sendable {
    public var databaseToolsConnectionId: String?
    public var credentialKey: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListCredentialExecuteGranteesSortOrderEnum?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsConnectionId, credentialKey, opcRequestId, ifMatch, limit, page, sortOrder
    }

    public init(
                databaseToolsConnectionId: String? = nil,
                credentialKey: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListCredentialExecuteGranteesSortOrderEnum? = nil
    ) {
        self.databaseToolsConnectionId = databaseToolsConnectionId
        self.credentialKey = credentialKey
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListCredentialExecuteGranteesRequest: CustomStringConvertible {
    public var description: String { "ListCredentialExecuteGranteesRequest()" }
}

// MARK: - ListCredentialExecuteGranteesResponse

public struct ListCredentialExecuteGranteesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var credentialExecuteGranteeCollection: CredentialExecuteGranteeCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, credentialExecuteGranteeCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                credentialExecuteGranteeCollection: CredentialExecuteGranteeCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.credentialExecuteGranteeCollection = credentialExecuteGranteeCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListCredentialExecuteGranteesResponse: CustomStringConvertible {
    public var description: String { "ListCredentialExecuteGranteesResponse()" }
}