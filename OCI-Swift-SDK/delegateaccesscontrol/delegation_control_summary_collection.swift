import Foundation

// MARK: - DelegationControlSummaryCollection

public struct DelegationControlSummaryCollection: Codable, Sendable {

    public var items: [DelegationControlSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DelegationControlSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DelegationControlSummaryCollection: CustomStringConvertible {
    public var description: String { "DelegationControlSummaryCollection()" }
}