import Foundation

// MARK: - AutoActivateToggleStatus

public struct AutoActivateToggleStatus: Codable, Sendable {

    public var status: AutoActivateToggleStatusStatusEnum
    public var state: AutoActivateToggleStatusStateEnum
    public var dataKey: AutoActivateToggleStatusDataKeyEnum

    private enum CodingKeys: String, CodingKey {
        case status, state, dataKey
    }

    public init(
                status: AutoActivateToggleStatusStatusEnum,
                state: AutoActivateToggleStatusStateEnum,
                dataKey: AutoActivateToggleStatusDataKeyEnum
    ) {
        self.status = status
        self.state = state
        self.dataKey = dataKey
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AutoActivateToggleStatus: CustomStringConvertible {
    public var description: String { "AutoActivateToggleStatus()" }
}