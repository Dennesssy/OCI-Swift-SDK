import Foundation

// MARK: - ProjectCollection

public struct ProjectCollection: Codable, Sendable {

    public var items: [ProjectSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ProjectSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ProjectCollection: CustomStringConvertible {
    public var description: String { "ProjectCollection()" }
}