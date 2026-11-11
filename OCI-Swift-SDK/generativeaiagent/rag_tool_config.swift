import Foundation

// MARK: - RagToolConfig

public struct RagToolConfig: Codable, Sendable {

    public var knowledgeBaseConfigs: [KnowledgeBaseConfig]
    public var generationLlmCustomization: LlmCustomization?
    public var runtimeVersion: String?
    public var embeddingLlmCustomization: LlmCustomization?
    public var rerankingLlmCustomization: LlmCustomization?
    public var reasoningLlmCustomization: LlmCustomization?

    private enum CodingKeys: String, CodingKey {
        case knowledgeBaseConfigs, generationLlmCustomization, runtimeVersion, embeddingLlmCustomization, rerankingLlmCustomization, reasoningLlmCustomization
    }

    public init(
                knowledgeBaseConfigs: [KnowledgeBaseConfig],
                generationLlmCustomization: LlmCustomization? = nil,
                runtimeVersion: String? = nil,
                embeddingLlmCustomization: LlmCustomization? = nil,
                rerankingLlmCustomization: LlmCustomization? = nil,
                reasoningLlmCustomization: LlmCustomization? = nil
    ) {
        self.knowledgeBaseConfigs = knowledgeBaseConfigs
        self.generationLlmCustomization = generationLlmCustomization
        self.runtimeVersion = runtimeVersion
        self.embeddingLlmCustomization = embeddingLlmCustomization
        self.rerankingLlmCustomization = rerankingLlmCustomization
        self.reasoningLlmCustomization = reasoningLlmCustomization
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RagToolConfig: CustomStringConvertible {
    public var description: String { "RagToolConfig()" }
}