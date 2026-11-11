import Foundation
import OCICommon

// MARK: - TagNamespace

public struct TagNamespace: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var name: String?
    public var description: String?
    public var isRetired: Bool?
    public var timeCreated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var lifecycleState: TagNamespaceLifecycleStateEnum?
    public var locks: [ResourceLock]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, name, description, isRetired, timeCreated, freeformTags, definedTags, lifecycleState, locks
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
                lifecycleState: TagNamespaceLifecycleStateEnum? = nil,
                locks: [ResourceLock]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.name = name
        self.description = description
        self.isRetired = isRetired
        self.timeCreated = timeCreated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.lifecycleState = lifecycleState
        self.locks = locks
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
