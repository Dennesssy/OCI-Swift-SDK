import Foundation

// MARK: - PromptInjectionGuardrailConfig

public struct PromptInjectionGuardrailConfig: Codable, Sendable {

    public var inputGuardrailMode: GuardrailModeEnum?

    private enum CodingKeys: String, CodingKey {
        case inputGuardrailMode
    }

    public init(
                inputGuardrailMode: GuardrailModeEnum? = nil
    ) {
        self.inputGuardrailMode = inputGuardrailMode
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PromptInjectionGuardrailConfig: CustomStringConvertible {
    public var description: String { "PromptInjectionGuardrailConfig()" }
}