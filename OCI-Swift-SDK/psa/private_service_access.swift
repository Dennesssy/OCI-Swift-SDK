import Foundation
import OCICommon

// MARK: - PrivateServiceAccess

public struct PrivateServiceAccess: Codable, Sendable {

    public var compartmentId: String?
    public var displayName: String?
    public var id: String?
    public var vcnId: String?
    public var subnetId: String?
    public var vnicId: String?
    public var lifecycleState: PrivateServiceAccessLifecycleStateEnum
    public var serviceId: String?
    public var fqdns: [String]
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?
    public var systemTags: [String: [String: JSONValue]]?
    public var securityAttributes: [String: [String: JSONValue]]?
    public var description: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var nsgIds: [String]?
    public var ipv4Ip: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, id, vcnId, subnetId, vnicId, lifecycleState, serviceId, fqdns, definedTags, freeformTags, systemTags, securityAttributes, description, timeCreated, timeUpdated, nsgIds, ipv4Ip
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                id: String? = nil,
                vcnId: String? = nil,
                subnetId: String? = nil,
                vnicId: String? = nil,
                lifecycleState: PrivateServiceAccessLifecycleStateEnum,
                serviceId: String? = nil,
                fqdns: [String],
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                securityAttributes: [String: [String: JSONValue]]? = nil,
                description: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                nsgIds: [String]? = nil,
                ipv4Ip: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.id = id
        self.vcnId = vcnId
        self.subnetId = subnetId
        self.vnicId = vnicId
        self.lifecycleState = lifecycleState
        self.serviceId = serviceId
        self.fqdns = fqdns
        self.definedTags = definedTags
        self.freeformTags = freeformTags
        self.systemTags = systemTags
        self.securityAttributes = securityAttributes
        self.description = description
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.nsgIds = nsgIds
        self.ipv4Ip = ipv4Ip
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
