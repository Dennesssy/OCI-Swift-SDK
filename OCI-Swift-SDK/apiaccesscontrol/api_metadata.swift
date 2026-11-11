import Foundation
import OCICommon

// MARK: - ApiMetadata

public struct ApiMetadata: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var lifecycleState: ApiMetadataLifecycleStateEnum
    public var serviceName: String?
    public var path: String?
    public var entityType: String?
    public var apiName: String?
    public var fields: [String]?
    public var attributes: [String]?
    public var timeUpdated: Date?
    public var timeDeleted: Date?
    public var lifecycleDetails: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, timeCreated, lifecycleState, serviceName, path, entityType, apiName, fields, attributes, timeUpdated, timeDeleted, lifecycleDetails, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: ApiMetadataLifecycleStateEnum,
                serviceName: String? = nil,
                path: String? = nil,
                entityType: String? = nil,
                apiName: String? = nil,
                fields: [String]? = nil,
                attributes: [String]? = nil,
                timeUpdated: Date? = nil,
                timeDeleted: Date? = nil,
                lifecycleDetails: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.serviceName = serviceName
        self.path = path
        self.entityType = entityType
        self.apiName = apiName
        self.fields = fields
        self.attributes = attributes
        self.timeUpdated = timeUpdated
        self.timeDeleted = timeDeleted
        self.lifecycleDetails = lifecycleDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApiMetadata: CustomStringConvertible {
    public var description: String { "ApiMetadata()" }
}