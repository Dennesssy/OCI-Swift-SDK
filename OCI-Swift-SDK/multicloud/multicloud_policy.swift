import Foundation
import OCICommon

// MARK: - MulticloudPolicy

public struct MulticloudPolicy: Codable, Sendable {

    public var compartmentId: String?
    public var name: String?
    public var statements: [String]
    public var compartmentName: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var lifecycleState: MulticloudPolicyLifecycleStateEnum?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, name, statements, compartmentName, description, freeformTags, definedTags, systemTags, lifecycleState
    }

    public init(
                compartmentId: String? = nil,
                name: String? = nil,
                statements: [String],
                compartmentName: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                lifecycleState: MulticloudPolicyLifecycleStateEnum? = nil
    ) {
        self.compartmentId = compartmentId
        self.name = name
        self.statements = statements
        self.compartmentName = compartmentName
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
