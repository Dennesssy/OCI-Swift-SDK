import Foundation

// MARK: - ToolCollection

public struct ToolCollection: Codable, Sendable {

    public var items: [ToolSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ToolSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ToolCollection: CustomStringConvertible {
    public var description: String { "ToolCollection()" }
}