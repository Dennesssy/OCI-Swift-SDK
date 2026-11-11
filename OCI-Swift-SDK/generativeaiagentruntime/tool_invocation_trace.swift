import Foundation

// MARK: - ToolInvocationTrace

public struct ToolInvocationTrace: Codable, Sendable {

    public var key: String?
    public var parentKey: String?
    public var source: SourceDetails?
    public var timeCreated: Date?
    public var timeFinished: Date?
    public var toolId: String?
    public var toolName: String?
    public var invocationDetails: String?

    private enum CodingKeys: String, CodingKey {
        case key, parentKey, source, timeCreated, timeFinished, toolId, toolName, invocationDetails
    }

    public init(
                key: String? = nil,
                parentKey: String? = nil,
                source: SourceDetails? = nil,
                timeCreated: Date? = nil,
                timeFinished: Date? = nil,
                toolId: String? = nil,
                toolName: String? = nil,
                invocationDetails: String? = nil
    ) {
        self.key = key
        self.parentKey = parentKey
        self.source = source
        self.timeCreated = timeCreated
        self.timeFinished = timeFinished
        self.toolId = toolId
        self.toolName = toolName
        self.invocationDetails = invocationDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ToolInvocationTrace: CustomStringConvertible {
    public var description: String { "ToolInvocationTrace()" }
}