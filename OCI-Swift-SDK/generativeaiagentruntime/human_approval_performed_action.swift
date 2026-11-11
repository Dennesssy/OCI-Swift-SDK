import Foundation

// MARK: - HumanApprovalPerformedAction

public struct HumanApprovalPerformedAction: Codable, Sendable {

    public var actionId: String?
    public var chosenOption: HumanApprovalPerformedActionChosenOptionEnum

    private enum CodingKeys: String, CodingKey {
        case actionId, chosenOption
    }

    public init(
                actionId: String? = nil,
                chosenOption: HumanApprovalPerformedActionChosenOptionEnum
    ) {
        self.actionId = actionId
        self.chosenOption = chosenOption
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension HumanApprovalPerformedAction: CustomStringConvertible {
    public var description: String { "HumanApprovalPerformedAction()" }
}