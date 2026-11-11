import Foundation

// MARK: - MfaTotpDevice

public struct MfaTotpDevice: Codable, Sendable {

    public var id: String?
    public var seed: String?
    public var userId: String?
    public var timeCreated: Date?
    public var lifecycleState: MfaTotpDeviceLifecycleStateEnum
    public var isActivated: Bool?
    public var timeExpires: Date?
    public var inactiveStatus: Int64?

    private enum CodingKeys: String, CodingKey {
        case id, seed, userId, timeCreated, lifecycleState, isActivated, timeExpires, inactiveStatus
    }

    public init(
                id: String? = nil,
                seed: String? = nil,
                userId: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: MfaTotpDeviceLifecycleStateEnum,
                isActivated: Bool? = nil,
                timeExpires: Date? = nil,
                inactiveStatus: Int64? = nil
    ) {
        self.id = id
        self.seed = seed
        self.userId = userId
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.isActivated = isActivated
        self.timeExpires = timeExpires
        self.inactiveStatus = inactiveStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MfaTotpDevice: CustomStringConvertible {
    public var description: String { "MfaTotpDevice()" }
}