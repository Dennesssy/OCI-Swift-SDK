import Foundation
import OCICommon

// MARK: - ChatDetails

public struct ChatDetails: Codable, Sendable {

    public var userMessage: String?
    public var shouldStream: Bool?
    public var sessionId: String?
    public var toolParameters: [String: String]?
    public var toolInputs: [JSONValue]?
    public var performedActions: [JSONValue]?

    private enum CodingKeys: String, CodingKey {
        case userMessage, shouldStream, sessionId, toolParameters, toolInputs, performedActions
    }

    public init(
                userMessage: String? = nil,
                shouldStream: Bool? = nil,
                sessionId: String? = nil,
                toolParameters: [String: String]? = nil,
                toolInputs: [JSONValue]? = nil,
                performedActions: [JSONValue]? = nil
    ) {
        self.userMessage = userMessage
        self.shouldStream = shouldStream
        self.sessionId = sessionId
        self.toolParameters = toolParameters
        self.toolInputs = toolInputs
        self.performedActions = performedActions
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChatDetails: CustomStringConvertible {
    public var description: String { "ChatDetails()" }
}