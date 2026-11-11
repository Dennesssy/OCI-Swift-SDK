import Foundation

// MARK: - ListCredentialsRequest

public struct ListCredentialsRequest: Codable, Sendable {
    public var databaseToolsConnectionId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListCredentialsSortOrderEnum?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsConnectionId, opcRequestId, ifMatch, limit, page, sortOrder
    }

    public init(
                databaseToolsConnectionId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListCredentialsSortOrderEnum? = nil
    ) {
        self.databaseToolsConnectionId = databaseToolsConnectionId
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

extension ListCredentialsRequest: CustomStringConvertible {
    public var description: String { "ListCredentialsRequest()" }
}

// MARK: - ListCredentialsResponse

public struct ListCredentialsResponse: Codable, Sendable {
    public var opcNextPage: String?
    public var opcRequestId: String?
    public var credentialCollection: CredentialCollection?

    private enum CodingKeys: String, CodingKey {
        case opcNextPage, opcRequestId, credentialCollection
    }

    public init(
                opcNextPage: String? = nil,
                opcRequestId: String? = nil,
                credentialCollection: CredentialCollection? = nil
    ) {
        self.opcNextPage = opcNextPage
        self.opcRequestId = opcRequestId
        self.credentialCollection = credentialCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListCredentialsResponse: CustomStringConvertible {
    public var description: String { "ListCredentialsResponse()" }
}