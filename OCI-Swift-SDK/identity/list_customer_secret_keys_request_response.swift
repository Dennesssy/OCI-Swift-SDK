import Foundation

// MARK: - ListCustomerSecretKeysRequest

public struct ListCustomerSecretKeysRequest: Codable, Sendable {
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

extension ListCustomerSecretKeysRequest: CustomStringConvertible {
    public var description: String { "ListCustomerSecretKeysRequest()" }
}

// MARK: - ListCustomerSecretKeysResponse

public struct ListCustomerSecretKeysResponse: Codable, Sendable {
    public var items: [CustomerSecretKeySummary]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [CustomerSecretKeySummary]? = nil,
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

extension ListCustomerSecretKeysResponse: CustomStringConvertible {
    public var description: String { "ListCustomerSecretKeysResponse()" }
}