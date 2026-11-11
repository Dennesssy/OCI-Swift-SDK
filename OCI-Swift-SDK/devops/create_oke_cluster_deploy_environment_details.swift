import Foundation
import OCICommon

// MARK: - CreateOkeClusterDeployEnvironmentDetails

public struct CreateOkeClusterDeployEnvironmentDetails: Codable, Sendable {

    public var projectId: String?
    public var clusterId: String?
    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var securityAttributes: [String: [String: JSONValue]]?
    public var networkChannel: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case projectId, clusterId, description, displayName, freeformTags, definedTags, securityAttributes, networkChannel
    }

    public init(
                projectId: String? = nil,
                clusterId: String? = nil,
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                securityAttributes: [String: [String: JSONValue]]? = nil,
                networkChannel: JSONValue? = nil
    ) {
        self.projectId = projectId
        self.clusterId = clusterId
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.securityAttributes = securityAttributes
        self.networkChannel = networkChannel
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
