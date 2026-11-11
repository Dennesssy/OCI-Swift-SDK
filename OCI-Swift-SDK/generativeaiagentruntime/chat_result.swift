import Foundation
import OCICommon

// MARK: - ChatResult

public struct ChatResult: Codable, Sendable {

    public var message: Message?
    public var traces: [JSONValue]?
    public var toolResults: [String: String]?
    public var toolOutputs: [JSONValue]?
    public var requiredActions: [JSONValue]?
    public var guardrailResult: String?

    private enum CodingKeys: String, CodingKey {
        case message, traces, toolResults, toolOutputs, requiredActions, guardrailResult
    }

    public init(
                message: Message? = nil,
                traces: [JSONValue]? = nil,
                toolResults: [String: String]? = nil,
                toolOutputs: [JSONValue]? = nil,
                requiredActions: [JSONValue]? = nil,
                guardrailResult: String? = nil
    ) {
        self.message = message
        self.traces = traces
        self.toolResults = toolResults
        self.toolOutputs = toolOutputs
        self.requiredActions = requiredActions
        self.guardrailResult = guardrailResult
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChatResult: CustomStringConvertible {
    public var description: String { "ChatResult()" }
}