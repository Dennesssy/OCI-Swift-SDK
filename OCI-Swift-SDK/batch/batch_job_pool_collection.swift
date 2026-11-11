import Foundation

// MARK: - BatchJobPoolCollection

public struct BatchJobPoolCollection: Codable, Sendable {

    public var items: [BatchJobPoolSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [BatchJobPoolSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BatchJobPoolCollection: CustomStringConvertible {
    public var description: String { "BatchJobPoolCollection()" }
}