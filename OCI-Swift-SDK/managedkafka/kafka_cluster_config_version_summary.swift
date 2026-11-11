import Foundation

// MARK: - KafkaClusterConfigVersionSummary

public struct KafkaClusterConfigVersionSummary: Codable, Sendable {

    public var configId: String?
    public var versionNumber: Int?
    public var timeCreated: Date?

    private enum CodingKeys: String, CodingKey {
        case configId, versionNumber, timeCreated
    }

    public init(
                configId: String? = nil,
                versionNumber: Int? = nil,
                timeCreated: Date? = nil
    ) {
        self.configId = configId
        self.versionNumber = versionNumber
        self.timeCreated = timeCreated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension KafkaClusterConfigVersionSummary: CustomStringConvertible {
    public var description: String { "KafkaClusterConfigVersionSummary()" }
}