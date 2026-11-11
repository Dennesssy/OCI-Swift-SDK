import Foundation
import OCICommon

// MARK: - UpdateIotFlowRuntimeDetails

public struct UpdateIotFlowRuntimeDetails: Codable, Sendable {

    public var displayName: String?
    public var description: String?
    public var scale: UpdateIotFlowRuntimeDetailsScaleEnum?
    public var networkConfig: NetworkConfigDetails?
    public var logConfig: LogConfigDetails?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, description, scale, networkConfig, logConfig, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                description: String? = nil,
                scale: UpdateIotFlowRuntimeDetailsScaleEnum? = nil,
                networkConfig: NetworkConfigDetails? = nil,
                logConfig: LogConfigDetails? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.description = description
        self.scale = scale
        self.networkConfig = networkConfig
        self.logConfig = logConfig
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
