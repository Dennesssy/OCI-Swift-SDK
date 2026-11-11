import Foundation

// MARK: - AgentToolConfig

public struct AgentToolConfig: Codable, Sendable {

    public var agentEndpointId: String?

    private enum CodingKeys: String, CodingKey {
        case agentEndpointId
    }

    public init(
                agentEndpointId: String? = nil
    ) {
        self.agentEndpointId = agentEndpointId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AgentToolConfig: CustomStringConvertible {
    public var description: String { "AgentToolConfig()" }
}