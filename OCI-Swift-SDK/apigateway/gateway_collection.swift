import Foundation

// MARK: - GatewayCollection

public struct GatewayCollection: Codable, Sendable {

    public var items: [GatewaySummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [GatewaySummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GatewayCollection: CustomStringConvertible {
    public var description: String { "GatewayCollection()" }
}