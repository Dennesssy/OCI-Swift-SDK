import Foundation
import OCICommon

// MARK: - UpdateNetworkSourceDetails

public struct UpdateNetworkSourceDetails: Codable, Sendable {

    public var description: String?
    public var publicSourceList: [String]?
    public var virtualSourceList: [NetworkSourcesVirtualSourceList]?
    public var services: [String]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case description, publicSourceList, virtualSourceList, services, freeformTags, definedTags
    }

    public init(
                description: String? = nil,
                publicSourceList: [String]? = nil,
                virtualSourceList: [NetworkSourcesVirtualSourceList]? = nil,
                services: [String]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.description = description
        self.publicSourceList = publicSourceList
        self.virtualSourceList = virtualSourceList
        self.services = services
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
