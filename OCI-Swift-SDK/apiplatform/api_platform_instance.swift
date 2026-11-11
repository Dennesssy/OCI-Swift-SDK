import Foundation
import OCICommon

// MARK: - ApiPlatformInstance

public struct ApiPlatformInstance: Codable, Sendable {

    public var id: String?
    public var name: String?
    public var compartmentId: String?
    public var timeCreated: Date?
    public var lifecycleState: ApiPlatformInstanceLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var description: String?
    public var idcsApp: IdcsApp?
    public var uris: Uris?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, name, compartmentId, timeCreated, lifecycleState, freeformTags, definedTags, description, idcsApp, uris, timeUpdated, lifecycleDetails, systemTags
    }

    public init(
                id: String? = nil,
                name: String? = nil,
                compartmentId: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: ApiPlatformInstanceLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                description: String? = nil,
                idcsApp: IdcsApp? = nil,
                uris: Uris? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.name = name
        self.compartmentId = compartmentId
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.description = description
        self.idcsApp = idcsApp
        self.uris = uris
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
