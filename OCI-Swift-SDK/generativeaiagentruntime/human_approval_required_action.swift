import Foundation

// MARK: - HumanApprovalRequiredAction

public struct HumanApprovalRequiredAction: Codable, Sendable {

    public var actionId: String?
    public var message: String?
    public var options: [HumanApprovalRequiredActionOptionsEnum]

    private enum CodingKeys: String, CodingKey {
        case actionId, message, options
    }

    public init(
                actionId: String? = nil,
                message: String? = nil,
                options: [HumanApprovalRequiredActionOptionsEnum]
    ) {
        self.actionId = actionId
        self.message = message
        self.options = options
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension HumanApprovalRequiredAction: CustomStringConvertible {
    public var description: String { "HumanApprovalRequiredAction()" }
}