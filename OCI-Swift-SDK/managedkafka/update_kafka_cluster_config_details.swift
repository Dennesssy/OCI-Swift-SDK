import Foundation
import OCICommon

// MARK: - UpdateKafkaClusterConfigDetails

public struct UpdateKafkaClusterConfigDetails: Codable, Sendable {

    public var displayName: String?
    public var latestConfig: KafkaClusterConfigVersion?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, latestConfig, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                latestConfig: KafkaClusterConfigVersion? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.latestConfig = latestConfig
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateKafkaClusterConfigDetails: CustomStringConvertible {
    public var description: String { "UpdateKafkaClusterConfigDetails()" }
}