import Foundation
import OCICommon

// MARK: - MultiCloudMetadataSummary

public struct MultiCloudMetadataSummary: Codable, Sendable {

    public var compartmentId: String?
    public var timeCreated: Date?
    public var subscriptionId: String?
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, timeCreated, subscriptionId, freeformTags, definedTags, systemTags
    }

    public init(
                compartmentId: String? = nil,
                timeCreated: Date? = nil,
                subscriptionId: String? = nil,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.timeCreated = timeCreated
        self.subscriptionId = subscriptionId
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MultiCloudMetadataSummary: CustomStringConvertible {
    public var description: String { "MultiCloudMetadataSummary()" }
}