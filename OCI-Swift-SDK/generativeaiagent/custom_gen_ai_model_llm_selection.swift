import Foundation

// MARK: - CustomGenAiModelLlmSelection

public struct CustomGenAiModelLlmSelection: Codable, Sendable {

    public var modelId: String?

    private enum CodingKeys: String, CodingKey {
        case modelId
    }

    public init(
                modelId: String? = nil
    ) {
        self.modelId = modelId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CustomGenAiModelLlmSelection: CustomStringConvertible {
    public var description: String { "CustomGenAiModelLlmSelection()" }
}