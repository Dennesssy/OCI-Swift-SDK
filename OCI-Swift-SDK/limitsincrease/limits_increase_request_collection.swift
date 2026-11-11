import Foundation

// MARK: - LimitsIncreaseRequestCollection

public struct LimitsIncreaseRequestCollection: Codable, Sendable {

    public var items: [LimitsIncreaseRequestSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [LimitsIncreaseRequestSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension LimitsIncreaseRequestCollection: CustomStringConvertible {
    public var description: String { "LimitsIncreaseRequestCollection()" }
}