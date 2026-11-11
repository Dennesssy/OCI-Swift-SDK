import Foundation

// MARK: - ListRegionsRequest

public struct ListRegionsRequest: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListRegionsRequest: CustomStringConvertible {
    public var description: String { "ListRegionsRequest()" }
}

// MARK: - ListRegionsResponse

public struct ListRegionsResponse: Codable, Sendable {
    public var items: [Region]?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId
    }

    public init(
                items: [Region]? = nil,
                opcRequestId: String? = nil
    ) {
        self.items = items
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListRegionsResponse: CustomStringConvertible {
    public var description: String { "ListRegionsResponse()" }
}