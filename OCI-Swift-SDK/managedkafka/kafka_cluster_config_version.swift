import Foundation

// MARK: - KafkaClusterConfigVersion

public struct KafkaClusterConfigVersion: Codable, Sendable {

    public var properties: [String: String]
    public var configId: String?
    public var versionNumber: Int?
    public var timeCreated: Date?

    private enum CodingKeys: String, CodingKey {
        case properties, configId, versionNumber, timeCreated
    }

    public init(
                properties: [String: String],
                configId: String? = nil,
                versionNumber: Int? = nil,
                timeCreated: Date? = nil
    ) {
        self.properties = properties
        self.configId = configId
        self.versionNumber = versionNumber
        self.timeCreated = timeCreated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension KafkaClusterConfigVersion: CustomStringConvertible {
    public var description: String { "KafkaClusterConfigVersion()" }
}