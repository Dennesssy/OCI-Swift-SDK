import Foundation

// MARK: - ListUserCredentialsRequest

public struct ListUserCredentialsRequest: Codable, Sendable {
    public var databaseToolsConnectionId: String?
    public var userKey: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListUserCredentialsSortOrderEnum?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsConnectionId, userKey, opcRequestId, ifMatch, limit, page, sortOrder
    }

    public init(
                databaseToolsConnectionId: String? = nil,
                userKey: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListUserCredentialsSortOrderEnum? = nil
    ) {
        self.databaseToolsConnectionId = databaseToolsConnectionId
        self.userKey = userKey
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

extension ListUserCredentialsRequest: CustomStringConvertible {
    public var description: String { "ListUserCredentialsRequest()" }
}

// MARK: - ListUserCredentialsResponse

public struct ListUserCredentialsResponse: Codable, Sendable {
    public var opcNextPage: String?
    public var opcRequestId: String?
    public var userCredentialCollection: UserCredentialCollection?

    private enum CodingKeys: String, CodingKey {
        case opcNextPage, opcRequestId, userCredentialCollection
    }

    public init(
                opcNextPage: String? = nil,
                opcRequestId: String? = nil,
                userCredentialCollection: UserCredentialCollection? = nil
    ) {
        self.opcNextPage = opcNextPage
        self.opcRequestId = opcRequestId
        self.userCredentialCollection = userCredentialCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListUserCredentialsResponse: CustomStringConvertible {
    public var description: String { "ListUserCredentialsResponse()" }
}