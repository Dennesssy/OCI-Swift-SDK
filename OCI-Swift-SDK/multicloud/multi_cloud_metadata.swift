import Foundation
import OCICommon

// MARK: - MultiCloudMetadata

public struct MultiCloudMetadata: Codable, Sendable {

    public var compartmentId: String?
    public var subscriptionId: String?
    public var timeCreated: Date?
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, subscriptionId, timeCreated, freeformTags, definedTags, systemTags
    }

    public init(
                compartmentId: String? = nil,
                subscriptionId: String? = nil,
                timeCreated: Date? = nil,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.subscriptionId = subscriptionId
        self.timeCreated = timeCreated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MultiCloudMetadata: CustomStringConvertible {
    public var description: String { "MultiCloudMetadata()" }
}