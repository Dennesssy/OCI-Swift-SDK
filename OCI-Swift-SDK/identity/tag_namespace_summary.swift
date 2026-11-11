import Foundation
import OCICommon

// MARK: - TagNamespaceSummary

public struct TagNamespaceSummary: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var name: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var isRetired: Bool?
    public var lifecycleState: TagNamespaceLifecycleStateEnum?
    public var timeCreated: Date?
    public var locks: [ResourceLock]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, name, description, freeformTags, definedTags, isRetired, lifecycleState, timeCreated, locks
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                name: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                isRetired: Bool? = nil,
                lifecycleState: TagNamespaceLifecycleStateEnum? = nil,
                timeCreated: Date? = nil,
                locks: [ResourceLock]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.name = name
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.isRetired = isRetired
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.locks = locks
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
