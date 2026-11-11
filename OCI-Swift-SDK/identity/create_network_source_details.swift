import Foundation
import OCICommon

// MARK: - CreateNetworkSourceDetails

public struct CreateNetworkSourceDetails: Codable, Sendable {

    public var compartmentId: String?
    public var name: String?
    public var description: String?
    public var publicSourceList: [String]?
    public var virtualSourceList: [NetworkSourcesVirtualSourceList]?
    public var services: [String]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, name, description, publicSourceList, virtualSourceList, services, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                name: String? = nil,
                description: String? = nil,
                publicSourceList: [String]? = nil,
                virtualSourceList: [NetworkSourcesVirtualSourceList]? = nil,
                services: [String]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.name = name
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
