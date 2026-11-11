import Foundation

// MARK: - SummarizeResourceInventoryRequest

public struct SummarizeResourceInventoryRequest: Codable, Sendable {
    public var compartmentId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SummarizeResourceInventoryRequest: CustomStringConvertible {
    public var description: String { "SummarizeResourceInventoryRequest()" }
}

// MARK: - SummarizeResourceInventoryResponse

public struct SummarizeResourceInventoryResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var resourceInventory: ResourceInventory?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, resourceInventory
    }

    public init(
                opcRequestId: String? = nil,
                resourceInventory: ResourceInventory? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.resourceInventory = resourceInventory
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SummarizeResourceInventoryResponse: CustomStringConvertible {
    public var description: String { "SummarizeResourceInventoryResponse()" }
}