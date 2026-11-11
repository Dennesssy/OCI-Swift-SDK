import Foundation
import OCICommon

// MARK: - ApiMetadataSummary

public struct ApiMetadataSummary: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var lifecycleState: ApiMetadataLifecycleStateEnum
    public var serviceName: String?
    public var entityType: String?
    public var apiName: String?
    public var attributes: [String]?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, timeCreated, lifecycleState, serviceName, entityType, apiName, attributes, timeUpdated, lifecycleDetails, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: ApiMetadataLifecycleStateEnum,
                serviceName: String? = nil,
                entityType: String? = nil,
                apiName: String? = nil,
                attributes: [String]? = nil,
                timeUpdated: Date? = nil,
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
        self.entityType = entityType
        self.apiName = apiName
        self.attributes = attributes
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApiMetadataSummary: CustomStringConvertible {
    public var description: String { "ApiMetadataSummary()" }
}