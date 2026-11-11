import Foundation
import OCICommon

// MARK: - NetworkSourcesSummary

public struct NetworkSourcesSummary: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var name: String?
    public var description: String?
    public var lifecycleState: NetworkSourcesLifecycleStateEnum
    public var timeCreated: Date?
    public var publicSourceList: [String]?
    public var virtualSourceList: [NetworkSourcesVirtualSourceList]?
    public var services: [String]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, name, description, lifecycleState, timeCreated, publicSourceList, virtualSourceList, services, freeformTags, definedTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                name: String? = nil,
                description: String? = nil,
                lifecycleState: NetworkSourcesLifecycleStateEnum,
                timeCreated: Date? = nil,
                publicSourceList: [String]? = nil,
                virtualSourceList: [NetworkSourcesVirtualSourceList]? = nil,
                services: [String]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.name = name
        self.description = description
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
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
