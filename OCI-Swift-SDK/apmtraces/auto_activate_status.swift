import Foundation

// MARK: - AutoActivateStatus

public struct AutoActivateStatus: Codable, Sendable {

    public var state: AutoActivateStatusStateEnum
    public var dataKey: AutoActivateStatusDataKeyEnum

    private enum CodingKeys: String, CodingKey {
        case state, dataKey
    }

    public init(
                state: AutoActivateStatusStateEnum,
                dataKey: AutoActivateStatusDataKeyEnum
    ) {
        self.state = state
        self.dataKey = dataKey
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AutoActivateStatus: CustomStringConvertible {
    public var description: String { "AutoActivateStatus()" }
}