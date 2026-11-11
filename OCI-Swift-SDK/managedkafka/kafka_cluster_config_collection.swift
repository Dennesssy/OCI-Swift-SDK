import Foundation

// MARK: - KafkaClusterConfigCollection

public struct KafkaClusterConfigCollection: Codable, Sendable {

    public var items: [KafkaClusterConfigSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [KafkaClusterConfigSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension KafkaClusterConfigCollection: CustomStringConvertible {
    public var description: String { "KafkaClusterConfigCollection()" }
}