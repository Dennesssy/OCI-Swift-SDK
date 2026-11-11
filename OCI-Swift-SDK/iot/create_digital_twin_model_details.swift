import Foundation
import OCICommon

// MARK: - CreateDigitalTwinModelDetails

public struct CreateDigitalTwinModelDetails: Codable, Sendable {

    public var iotDomainId: String?
    public var spec: [String: JSONValue]
    public var displayName: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case iotDomainId, spec, displayName, description, freeformTags, definedTags
    }

    public init(
                iotDomainId: String? = nil,
                spec: [String: JSONValue],
                displayName: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.iotDomainId = iotDomainId
        self.spec = spec
        self.displayName = displayName
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
