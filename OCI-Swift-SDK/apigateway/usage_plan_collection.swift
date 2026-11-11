import Foundation

// MARK: - UsagePlanCollection

public struct UsagePlanCollection: Codable, Sendable {

    public var items: [UsagePlanSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [UsagePlanSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UsagePlanCollection: CustomStringConvertible {
    public var description: String { "UsagePlanCollection()" }
}