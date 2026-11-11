import Foundation
import OCICommon

// MARK: - VmInstanceSummary

public struct VmInstanceSummary: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var cpusEnabled: Int?
    public var lifecycleState: VmInstanceLifecycleStateEnum
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var timeZone: String?
    public var displayName: String?
    public var description: String?
    public var infrastructureId: String?
    public var memorySizeInGBs: Double?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?
    public var systemTags: [String: [String: JSONValue]]?
    public var imageId: String?
    public var serverId: String?
    public var lifecycleDetails: String?
    public var domainName: String?
    public var vmNetworkId: String?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, cpusEnabled, lifecycleState, timeCreated, timeUpdated, timeZone, displayName, description, infrastructureId, memorySizeInGBs, definedTags, freeformTags, systemTags, imageId, serverId, lifecycleDetails, domainName, vmNetworkId
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                cpusEnabled: Int? = nil,
                lifecycleState: VmInstanceLifecycleStateEnum,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                timeZone: String? = nil,
                displayName: String? = nil,
                description: String? = nil,
                infrastructureId: String? = nil,
                memorySizeInGBs: Double? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                imageId: String? = nil,
                serverId: String? = nil,
                lifecycleDetails: String? = nil,
                domainName: String? = nil,
                vmNetworkId: String? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.cpusEnabled = cpusEnabled
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.timeZone = timeZone
        self.displayName = displayName
        self.description = description
        self.infrastructureId = infrastructureId
        self.memorySizeInGBs = memorySizeInGBs
        self.definedTags = definedTags
        self.freeformTags = freeformTags
        self.systemTags = systemTags
        self.imageId = imageId
        self.serverId = serverId
        self.lifecycleDetails = lifecycleDetails
        self.domainName = domainName
        self.vmNetworkId = vmNetworkId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
