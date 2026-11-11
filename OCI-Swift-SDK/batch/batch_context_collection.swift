import Foundation

// MARK: - BatchContextCollection

public struct BatchContextCollection: Codable, Sendable {

    public var items: [BatchContextSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [BatchContextSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BatchContextCollection: CustomStringConvertible {
    public var description: String { "BatchContextCollection()" }
}