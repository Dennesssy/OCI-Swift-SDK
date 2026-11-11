import Foundation
import OCICommon

// MARK: - CreateDigitalTwinRelationshipDetails

public struct CreateDigitalTwinRelationshipDetails: Codable, Sendable {

    public var iotDomainId: String?
    public var contentPath: String?
    public var sourceDigitalTwinInstanceId: String?
    public var targetDigitalTwinInstanceId: String?
    public var displayName: String?
    public var description: String?
    public var content: [String: JSONValue]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case iotDomainId, contentPath, sourceDigitalTwinInstanceId, targetDigitalTwinInstanceId, displayName, description, content, freeformTags, definedTags
    }

    public init(
                iotDomainId: String? = nil,
                contentPath: String? = nil,
                sourceDigitalTwinInstanceId: String? = nil,
                targetDigitalTwinInstanceId: String? = nil,
                displayName: String? = nil,
                description: String? = nil,
                content: [String: JSONValue]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.iotDomainId = iotDomainId
        self.contentPath = contentPath
        self.sourceDigitalTwinInstanceId = sourceDigitalTwinInstanceId
        self.targetDigitalTwinInstanceId = targetDigitalTwinInstanceId
        self.displayName = displayName
        self.description = description
        self.content = content
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
