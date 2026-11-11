import Foundation
import OCICommon

// MARK: - Tenancy

public struct Tenancy: Codable, Sendable {

    public var id: String?
    public var name: String?
    public var description: String?
    public var homeRegionKey: String?
    public var upiIdcsCompatibilityLayerEndpoint: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, name, description, homeRegionKey, upiIdcsCompatibilityLayerEndpoint, freeformTags, definedTags
    }

    public init(
                id: String? = nil,
                name: String? = nil,
                description: String? = nil,
                homeRegionKey: String? = nil,
                upiIdcsCompatibilityLayerEndpoint: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.name = name
        self.description = description
        self.homeRegionKey = homeRegionKey
        self.upiIdcsCompatibilityLayerEndpoint = upiIdcsCompatibilityLayerEndpoint
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
