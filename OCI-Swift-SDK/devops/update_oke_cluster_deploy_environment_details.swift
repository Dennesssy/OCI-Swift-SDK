import Foundation
import OCICommon

// MARK: - UpdateOkeClusterDeployEnvironmentDetails

public struct UpdateOkeClusterDeployEnvironmentDetails: Codable, Sendable {

    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var securityAttributes: [String: [String: JSONValue]]?
    public var clusterId: String?
    public var networkChannel: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case description, displayName, freeformTags, definedTags, securityAttributes, clusterId, networkChannel
    }

    public init(
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                securityAttributes: [String: [String: JSONValue]]? = nil,
                clusterId: String? = nil,
                networkChannel: JSONValue? = nil
    ) {
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.securityAttributes = securityAttributes
        self.clusterId = clusterId
        self.networkChannel = networkChannel
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
