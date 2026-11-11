import Foundation

// MARK: - ListApiKeysRequest

public struct ListApiKeysRequest: Codable, Sendable {
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

extension ListApiKeysRequest: CustomStringConvertible {
    public var description: String { "ListApiKeysRequest()" }
}

// MARK: - ListApiKeysResponse

public struct ListApiKeysResponse: Codable, Sendable {
    public var items: [ApiKey]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [ApiKey]? = nil,
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

extension ListApiKeysResponse: CustomStringConvertible {
    public var description: String { "ListApiKeysResponse()" }
}