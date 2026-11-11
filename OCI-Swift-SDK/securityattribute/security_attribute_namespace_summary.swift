import Foundation
import OCICommon

// MARK: - SecurityAttributeNamespaceSummary

public struct SecurityAttributeNamespaceSummary: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var name: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var isRetired: Bool?
    public var mode: [String]?
    public var lifecycleState: SecurityAttributeNamespaceLifecycleStateEnum?
    public var timeCreated: Date?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, name, description, freeformTags, definedTags, systemTags, isRetired, mode, lifecycleState, timeCreated
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                name: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                isRetired: Bool? = nil,
                mode: [String]? = nil,
                lifecycleState: SecurityAttributeNamespaceLifecycleStateEnum? = nil,
                timeCreated: Date? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.name = name
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.isRetired = isRetired
        self.mode = mode
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
