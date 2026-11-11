import Foundation

// MARK: - LimitsIncreaseItemRequestCollection

public struct LimitsIncreaseItemRequestCollection: Codable, Sendable {

    public var items: [LimitsIncreaseItemRequestSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [LimitsIncreaseItemRequestSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension LimitsIncreaseItemRequestCollection: CustomStringConvertible {
    public var description: String { "LimitsIncreaseItemRequestCollection()" }
}