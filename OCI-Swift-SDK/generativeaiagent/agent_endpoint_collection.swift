import Foundation

// MARK: - AgentEndpointCollection

public struct AgentEndpointCollection: Codable, Sendable {

    public var items: [AgentEndpointSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [AgentEndpointSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AgentEndpointCollection: CustomStringConvertible {
    public var description: String { "AgentEndpointCollection()" }
}