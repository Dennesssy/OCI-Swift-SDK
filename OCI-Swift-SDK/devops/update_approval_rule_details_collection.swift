import Foundation

// MARK: - UpdateApprovalRuleDetailsCollection

public struct UpdateApprovalRuleDetailsCollection: Codable, Sendable {

    public var items: [UpdateApprovalRuleDetails]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [UpdateApprovalRuleDetails]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateApprovalRuleDetailsCollection: CustomStringConvertible {
    public var description: String { "UpdateApprovalRuleDetailsCollection()" }
}