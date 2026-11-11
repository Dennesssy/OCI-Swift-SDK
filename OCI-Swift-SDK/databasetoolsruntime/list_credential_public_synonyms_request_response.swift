import Foundation

// MARK: - ListCredentialPublicSynonymsRequest

public struct ListCredentialPublicSynonymsRequest: Codable, Sendable {
    public var databaseToolsConnectionId: String?
    public var credentialKey: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListCredentialPublicSynonymsSortOrderEnum?

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
                sortOrder: ListCredentialPublicSynonymsSortOrderEnum? = nil
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

extension ListCredentialPublicSynonymsRequest: CustomStringConvertible {
    public var description: String { "ListCredentialPublicSynonymsRequest()" }
}

// MARK: - ListCredentialPublicSynonymsResponse

public struct ListCredentialPublicSynonymsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var credentialPublicSynonymCollection: CredentialPublicSynonymCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, credentialPublicSynonymCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                credentialPublicSynonymCollection: CredentialPublicSynonymCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.credentialPublicSynonymCollection = credentialPublicSynonymCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListCredentialPublicSynonymsResponse: CustomStringConvertible {
    public var description: String { "ListCredentialPublicSynonymsResponse()" }
}