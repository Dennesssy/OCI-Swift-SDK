import Foundation
import OCICommon

// MARK: - LlmCustomization

public struct LlmCustomization: Codable, Sendable {

    public var llmSelection: JSONValue?
    public var llmHyperParameters: [String: JSONValue]?
    public var instruction: String?

    private enum CodingKeys: String, CodingKey {
        case llmSelection, llmHyperParameters, instruction
    }

    public init(
                llmSelection: JSONValue? = nil,
                llmHyperParameters: [String: JSONValue]? = nil,
                instruction: String? = nil
    ) {
        self.llmSelection = llmSelection
        self.llmHyperParameters = llmHyperParameters
        self.instruction = instruction
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension LlmCustomization: CustomStringConvertible {
    public var description: String { "LlmCustomization()" }
}