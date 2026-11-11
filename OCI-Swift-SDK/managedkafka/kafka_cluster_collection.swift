import Foundation

// MARK: - KafkaClusterCollection

public struct KafkaClusterCollection: Codable, Sendable {

    public var items: [KafkaClusterSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [KafkaClusterSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension KafkaClusterCollection: CustomStringConvertible {
    public var description: String { "KafkaClusterCollection()" }
}