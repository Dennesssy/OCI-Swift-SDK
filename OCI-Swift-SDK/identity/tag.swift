import Foundation
import OCICommon

// MARK: - Tag

public struct Tag: Codable, Sendable {

    public var compartmentId: String?
    public var tagNamespaceId: String?
    public var tagNamespaceName: String?
    public var id: String?
    public var name: String?
    public var description: String?
    public var isRetired: Bool?
    public var timeCreated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var lifecycleState: TagLifecycleStateEnum?
    public var isCostTracking: Bool?
    public var validator: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, tagNamespaceId, tagNamespaceName, id, name, description, isRetired, timeCreated, freeformTags, definedTags, lifecycleState, isCostTracking, validator
    }

    public init(
                compartmentId: String? = nil,
                tagNamespaceId: String? = nil,
                tagNamespaceName: String? = nil,
                id: String? = nil,
                name: String? = nil,
                description: String? = nil,
                isRetired: Bool? = nil,
                timeCreated: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                lifecycleState: TagLifecycleStateEnum? = nil,
                isCostTracking: Bool? = nil,
                validator: JSONValue? = nil
    ) {
        self.compartmentId = compartmentId
        self.tagNamespaceId = tagNamespaceId
        self.tagNamespaceName = tagNamespaceName
        self.id = id
        self.name = name
        self.description = description
        self.isRetired = isRetired
        self.timeCreated = timeCreated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.lifecycleState = lifecycleState
        self.isCostTracking = isCostTracking
        self.validator = validator
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
