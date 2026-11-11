import Foundation

// MARK: - RequiredPolicyCollection

public struct RequiredPolicyCollection: Codable, Sendable {

    public var items: [RequiredPolicySummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [RequiredPolicySummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RequiredPolicyCollection: CustomStringConvertible {
    public var description: String { "RequiredPolicyCollection()" }
}