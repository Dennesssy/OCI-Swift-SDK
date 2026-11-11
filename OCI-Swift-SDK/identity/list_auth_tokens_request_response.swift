import Foundation

// MARK: - ListAuthTokensRequest

public struct ListAuthTokensRequest: Codable, Sendable {
    public var userId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case userId, opcRequestId
    }

    public init(
                userId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.userId = userId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListAuthTokensRequest: CustomStringConvertible {
    public var description: String { "ListAuthTokensRequest()" }
}

// MARK: - ListAuthTokensResponse

public struct ListAuthTokensResponse: Codable, Sendable {
    public var items: [AuthToken]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [AuthToken]? = nil,
                opcRequestId: String? = nil,
                opcNextPage: String? = nil
    ) {
        self.items = items
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListAuthTokensResponse: CustomStringConvertible {
    public var description: String { "ListAuthTokensResponse()" }
}