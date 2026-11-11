import Foundation

// MARK: - IdpGroupMapping

public struct IdpGroupMapping: Codable, Sendable {

    public var id: String?
    public var idpId: String?
    public var idpGroupName: String?
    public var groupId: String?
    public var compartmentId: String?
    public var timeCreated: Date?
    public var lifecycleState: IdpGroupMappingLifecycleStateEnum
    public var inactiveStatus: Int64?

    private enum CodingKeys: String, CodingKey {
        case id, idpId, idpGroupName, groupId, compartmentId, timeCreated, lifecycleState, inactiveStatus
    }

    public init(
                id: String? = nil,
                idpId: String? = nil,
                idpGroupName: String? = nil,
                groupId: String? = nil,
                compartmentId: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: IdpGroupMappingLifecycleStateEnum,
                inactiveStatus: Int64? = nil
    ) {
        self.id = id
        self.idpId = idpId
        self.idpGroupName = idpGroupName
        self.groupId = groupId
        self.compartmentId = compartmentId
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.inactiveStatus = inactiveStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension IdpGroupMapping: CustomStringConvertible {
    public var description: String { "IdpGroupMapping()" }
}