import Foundation

// MARK: - ApiCollection

public struct ApiCollection: Codable, Sendable {

    public var items: [ApiSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ApiSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApiCollection: CustomStringConvertible {
    public var description: String { "ApiCollection()" }
}