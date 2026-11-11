import Foundation

// MARK: - LlmConfig

public struct LlmConfig: Codable, Sendable {

    public var routingLlmCustomization: LlmCustomization?
    public var runtimeVersion: String?

    private enum CodingKeys: String, CodingKey {
        case routingLlmCustomization, runtimeVersion
    }

    public init(
                routingLlmCustomization: LlmCustomization? = nil,
                runtimeVersion: String? = nil
    ) {
        self.routingLlmCustomization = routingLlmCustomization
        self.runtimeVersion = runtimeVersion
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension LlmConfig: CustomStringConvertible {
    public var description: String { "LlmConfig()" }
}