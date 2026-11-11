import Foundation

// MARK: - DiffCollection

public struct DiffCollection: Codable, Sendable {

    public var items: [DiffSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DiffSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DiffCollection: CustomStringConvertible {
    public var description: String { "DiffCollection()" }
}