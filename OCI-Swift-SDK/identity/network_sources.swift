import Foundation
import OCICommon

// MARK: - NetworkSources

public struct NetworkSources: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var name: String?
    public var description: String?
    public var timeCreated: Date?
    public var lifecycleState: NetworkSourcesLifecycleStateEnum
    public var publicSourceList: [String]?
    public var virtualSourceList: [NetworkSourcesVirtualSourceList]?
    public var services: [String]?
    public var inactiveStatus: Int64?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, name, description, timeCreated, lifecycleState, publicSourceList, virtualSourceList, services, inactiveStatus, freeformTags, definedTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                name: String? = nil,
                description: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: NetworkSourcesLifecycleStateEnum,
                publicSourceList: [String]? = nil,
                virtualSourceList: [NetworkSourcesVirtualSourceList]? = nil,
                services: [String]? = nil,
                inactiveStatus: Int64? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.name = name
        self.description = description
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.publicSourceList = publicSourceList
        self.virtualSourceList = virtualSourceList
        self.services = services
        self.inactiveStatus = inactiveStatus
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
