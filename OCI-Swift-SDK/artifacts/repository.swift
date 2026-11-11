import Foundation
import OCICommon

// MARK: - repository

public struct repository: Codable, Sendable {

    public var jsonData: Data?
    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var description: String?
    public var isImmutable: Bool?
    public var lifecycleState: RepositoryLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var timeCreated: Date?
    public var repositoryType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, id, displayName, compartmentId, description, isImmutable, lifecycleState, freeformTags, definedTags, timeCreated, repositoryType
    }

    public init(
                jsonData: Data? = nil,
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                description: String? = nil,
                isImmutable: Bool? = nil,
                lifecycleState: RepositoryLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                timeCreated: Date? = nil,
                repositoryType: String? = nil
    ) {
        self.jsonData = jsonData
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.description = description
        self.isImmutable = isImmutable
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.timeCreated = timeCreated
        self.repositoryType = repositoryType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
