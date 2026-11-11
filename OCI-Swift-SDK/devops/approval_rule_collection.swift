import Foundation

// MARK: - ApprovalRuleCollection

public struct ApprovalRuleCollection: Codable, Sendable {

    public var items: [ApprovalRule]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ApprovalRule]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApprovalRuleCollection: CustomStringConvertible {
    public var description: String { "ApprovalRuleCollection()" }
}