import Foundation
import OCICommon

// MARK: - GenericRepository

public struct GenericRepository: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var description: String?
    public var isImmutable: Bool?
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var timeCreated: Date?
    public var lifecycleState: RepositoryLifecycleStateEnum

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, description, isImmutable, freeformTags, definedTags, timeCreated, lifecycleState
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                description: String? = nil,
                isImmutable: Bool? = nil,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                timeCreated: Date? = nil,
                lifecycleState: RepositoryLifecycleStateEnum
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.description = description
        self.isImmutable = isImmutable
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
