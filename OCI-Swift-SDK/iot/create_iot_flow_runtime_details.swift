import Foundation
import OCICommon

// MARK: - CreateIotFlowRuntimeDetails

public struct CreateIotFlowRuntimeDetails: Codable, Sendable {

    public var iotDomainId: String?
    public var compartmentId: String?
    public var scale: CreateIotFlowRuntimeDetailsScaleEnum?
    public var networkConfig: NetworkConfigDetails?
    public var logConfig: LogConfigDetails?
    public var displayName: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case iotDomainId, compartmentId, scale, networkConfig, logConfig, displayName, description, freeformTags, definedTags
    }

    public init(
                iotDomainId: String? = nil,
                compartmentId: String? = nil,
                scale: CreateIotFlowRuntimeDetailsScaleEnum? = nil,
                networkConfig: NetworkConfigDetails? = nil,
                logConfig: LogConfigDetails? = nil,
                displayName: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.iotDomainId = iotDomainId
        self.compartmentId = compartmentId
        self.scale = scale
        self.networkConfig = networkConfig
        self.logConfig = logConfig
        self.displayName = displayName
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
