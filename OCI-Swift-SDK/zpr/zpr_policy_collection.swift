import Foundation

// MARK: - ZprPolicyCollection

public struct ZprPolicyCollection: Codable, Sendable {

    public var items: [ZprPolicySummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ZprPolicySummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ZprPolicyCollection: CustomStringConvertible {
    public var description: String { "ZprPolicyCollection()" }
}