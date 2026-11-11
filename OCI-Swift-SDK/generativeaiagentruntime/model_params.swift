import Foundation

// MARK: - ModelParams

public struct ModelParams: Codable, Sendable {

    public var maxTokens: Int?
    public var temperature: Float?
    public var topP: Float?
    public var topK: Int?
    public var frequencyPenalty: Float?
    public var presencePenalty: Float?
    public var seed: Int?
    public var reasoningEffort: String?
    public var verbosity: String?

    private enum CodingKeys: String, CodingKey {
        case maxTokens, temperature, topP, topK, frequencyPenalty, presencePenalty, seed, reasoningEffort, verbosity
    }

    public init(
                maxTokens: Int? = nil,
                temperature: Float? = nil,
                topP: Float? = nil,
                topK: Int? = nil,
                frequencyPenalty: Float? = nil,
                presencePenalty: Float? = nil,
                seed: Int? = nil,
                reasoningEffort: String? = nil,
                verbosity: String? = nil
    ) {
        self.maxTokens = maxTokens
        self.temperature = temperature
        self.topP = topP
        self.topK = topK
        self.frequencyPenalty = frequencyPenalty
        self.presencePenalty = presencePenalty
        self.seed = seed
        self.reasoningEffort = reasoningEffort
        self.verbosity = verbosity
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ModelParams: CustomStringConvertible {
    public var description: String { "ModelParams()" }
}