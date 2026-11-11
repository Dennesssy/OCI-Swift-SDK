import Foundation

// MARK: - ListSwiftPasswordsRequest

public struct ListSwiftPasswordsRequest: Codable, Sendable {
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

extension ListSwiftPasswordsRequest: CustomStringConvertible {
    public var description: String { "ListSwiftPasswordsRequest()" }
}

// MARK: - ListSwiftPasswordsResponse

public struct ListSwiftPasswordsResponse: Codable, Sendable {
    public var items: [SwiftPassword]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [SwiftPassword]? = nil,
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

extension ListSwiftPasswordsResponse: CustomStringConvertible {
    public var description: String { "ListSwiftPasswordsResponse()" }
}