import Foundation

// MARK: - ContentModerationGuardrailConfig

public struct ContentModerationGuardrailConfig: Codable, Sendable {

    public var inputGuardrailMode: GuardrailModeEnum?
    public var outputGuardrailMode: GuardrailModeEnum?

    private enum CodingKeys: String, CodingKey {
        case inputGuardrailMode, outputGuardrailMode
    }

    public init(
                inputGuardrailMode: GuardrailModeEnum? = nil,
                outputGuardrailMode: GuardrailModeEnum? = nil
    ) {
        self.inputGuardrailMode = inputGuardrailMode
        self.outputGuardrailMode = outputGuardrailMode
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ContentModerationGuardrailConfig: CustomStringConvertible {
    public var description: String { "ContentModerationGuardrailConfig()" }
}