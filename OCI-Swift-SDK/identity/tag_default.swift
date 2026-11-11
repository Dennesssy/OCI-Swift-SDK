import Foundation

// MARK: - TagDefault

public struct TagDefault: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var tagNamespaceId: String?
    public var tagDefinitionId: String?
    public var tagDefinitionName: String?
    public var value: String?
    public var timeCreated: Date?
    public var isRequired: Bool?
    public var lifecycleState: TagDefaultLifecycleStateEnum?
    public var locks: [ResourceLock]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, tagNamespaceId, tagDefinitionId, tagDefinitionName, value, timeCreated, isRequired, lifecycleState, locks
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                tagNamespaceId: String? = nil,
                tagDefinitionId: String? = nil,
                tagDefinitionName: String? = nil,
                value: String? = nil,
                timeCreated: Date? = nil,
                isRequired: Bool? = nil,
                lifecycleState: TagDefaultLifecycleStateEnum? = nil,
                locks: [ResourceLock]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.tagNamespaceId = tagNamespaceId
        self.tagDefinitionId = tagDefinitionId
        self.tagDefinitionName = tagDefinitionName
        self.value = value
        self.timeCreated = timeCreated
        self.isRequired = isRequired
        self.lifecycleState = lifecycleState
        self.locks = locks
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension TagDefault: CustomStringConvertible {
    public var description: String { "TagDefault()" }
}