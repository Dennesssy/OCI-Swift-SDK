import Foundation

// MARK: - KafkaClusterConfigVersionCollection

public struct KafkaClusterConfigVersionCollection: Codable, Sendable {

    public var items: [KafkaClusterConfigVersionSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [KafkaClusterConfigVersionSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension KafkaClusterConfigVersionCollection: CustomStringConvertible {
    public var description: String { "KafkaClusterConfigVersionCollection()" }
}