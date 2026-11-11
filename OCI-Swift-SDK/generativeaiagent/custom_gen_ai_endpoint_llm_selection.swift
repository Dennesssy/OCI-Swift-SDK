import Foundation

// MARK: - CustomGenAiEndpointLlmSelection

public struct CustomGenAiEndpointLlmSelection: Codable, Sendable {

    public var endpointId: String?

    private enum CodingKeys: String, CodingKey {
        case endpointId
    }

    public init(
                endpointId: String? = nil
    ) {
        self.endpointId = endpointId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CustomGenAiEndpointLlmSelection: CustomStringConvertible {
    public var description: String { "CustomGenAiEndpointLlmSelection()" }
}