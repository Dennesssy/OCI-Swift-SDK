import Foundation

// MARK: - ScriptCollection

public struct ScriptCollection: Codable, Sendable {

    public var items: [ScriptSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ScriptSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ScriptCollection: CustomStringConvertible {
    public var description: String { "ScriptCollection()" }
}