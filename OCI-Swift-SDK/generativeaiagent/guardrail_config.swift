import Foundation

// MARK: - GuardrailConfig

public struct GuardrailConfig: Codable, Sendable {

    public var contentModerationConfig: ContentModerationGuardrailConfig?
    public var promptInjectionConfig: PromptInjectionGuardrailConfig?
    public var personallyIdentifiableInformationConfig: PersonallyIdentifiableInformationGuardrailConfig?

    private enum CodingKeys: String, CodingKey {
        case contentModerationConfig, promptInjectionConfig, personallyIdentifiableInformationConfig
    }

    public init(
                contentModerationConfig: ContentModerationGuardrailConfig? = nil,
                promptInjectionConfig: PromptInjectionGuardrailConfig? = nil,
                personallyIdentifiableInformationConfig: PersonallyIdentifiableInformationGuardrailConfig? = nil
    ) {
        self.contentModerationConfig = contentModerationConfig
        self.promptInjectionConfig = promptInjectionConfig
        self.personallyIdentifiableInformationConfig = personallyIdentifiableInformationConfig
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GuardrailConfig: CustomStringConvertible {
    public var description: String { "GuardrailConfig()" }
}