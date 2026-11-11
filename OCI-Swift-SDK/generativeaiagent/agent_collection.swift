import Foundation

// MARK: - AgentCollection

public struct AgentCollection: Codable, Sendable {

    public var items: [AgentSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [AgentSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AgentCollection: CustomStringConvertible {
    public var description: String { "AgentCollection()" }
}