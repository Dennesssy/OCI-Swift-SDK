import Foundation
import OCICommon

// MARK: - SecurityAttributeNamespace

public struct SecurityAttributeNamespace: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var name: String?
    public var description: String?
    public var isRetired: Bool?
    public var timeCreated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var mode: [String]?
    public var lifecycleState: SecurityAttributeNamespaceLifecycleStateEnum?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, name, description, isRetired, timeCreated, freeformTags, definedTags, systemTags, mode, lifecycleState
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                name: String? = nil,
                description: String? = nil,
                isRetired: Bool? = nil,
                timeCreated: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                mode: [String]? = nil,
                lifecycleState: SecurityAttributeNamespaceLifecycleStateEnum? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.name = name
        self.description = description
        self.isRetired = isRetired
        self.timeCreated = timeCreated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.mode = mode
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
