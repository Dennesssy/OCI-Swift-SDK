import Foundation
import OCICommon

// MARK: - CreateBatchContextDetails

public struct CreateBatchContextDetails: Codable, Sendable {

    public var compartmentId: String?
    public var network: CreateNetworkDetails?
    public var fleets: [JSONValue]
    public var displayName: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var jobPriorityConfigurations: [JobPriorityConfiguration]?
    public var entitlements: [String: Int]?
    public var loggingConfiguration: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, network, fleets, displayName, description, freeformTags, definedTags, jobPriorityConfigurations, entitlements, loggingConfiguration
    }

    public init(
                compartmentId: String? = nil,
                network: CreateNetworkDetails? = nil,
                fleets: [JSONValue],
                displayName: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                jobPriorityConfigurations: [JobPriorityConfiguration]? = nil,
                entitlements: [String: Int]? = nil,
                loggingConfiguration: JSONValue? = nil
    ) {
        self.compartmentId = compartmentId
        self.network = network
        self.fleets = fleets
        self.displayName = displayName
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.jobPriorityConfigurations = jobPriorityConfigurations
        self.entitlements = entitlements
        self.loggingConfiguration = loggingConfiguration
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
