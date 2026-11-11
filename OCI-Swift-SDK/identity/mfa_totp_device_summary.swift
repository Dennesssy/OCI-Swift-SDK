import Foundation

// MARK: - MfaTotpDeviceSummary

public struct MfaTotpDeviceSummary: Codable, Sendable {

    public var id: String?
    public var userId: String?
    public var timeCreated: Date?
    public var lifecycleState: MfaTotpDeviceSummaryLifecycleStateEnum
    public var isActivated: Bool?
    public var timeExpires: Date?
    public var inactiveStatus: Int64?

    private enum CodingKeys: String, CodingKey {
        case id, userId, timeCreated, lifecycleState, isActivated, timeExpires, inactiveStatus
    }

    public init(
                id: String? = nil,
                userId: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: MfaTotpDeviceSummaryLifecycleStateEnum,
                isActivated: Bool? = nil,
                timeExpires: Date? = nil,
                inactiveStatus: Int64? = nil
    ) {
        self.id = id
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

extension MfaTotpDeviceSummary: CustomStringConvertible {
    public var description: String { "MfaTotpDeviceSummary()" }
}