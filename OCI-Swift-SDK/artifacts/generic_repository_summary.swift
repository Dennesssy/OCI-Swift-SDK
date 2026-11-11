import Foundation
import OCICommon

// MARK: - GenericRepositorySummary

public struct GenericRepositorySummary: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var isImmutable: Bool?
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var timeCreated: Date?
    public var description: String?
    public var lifecycleState: RepositoryLifecycleStateEnum

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, isImmutable, freeformTags, definedTags, timeCreated, description, lifecycleState
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                isImmutable: Bool? = nil,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                timeCreated: Date? = nil,
                description: String? = nil,
                lifecycleState: RepositoryLifecycleStateEnum
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.isImmutable = isImmutable
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.timeCreated = timeCreated
        self.description = description
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
