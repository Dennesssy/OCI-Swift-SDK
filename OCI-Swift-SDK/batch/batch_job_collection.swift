import Foundation

// MARK: - BatchJobCollection

public struct BatchJobCollection: Codable, Sendable {

    public var items: [BatchJobSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [BatchJobSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BatchJobCollection: CustomStringConvertible {
    public var description: String { "BatchJobCollection()" }
}