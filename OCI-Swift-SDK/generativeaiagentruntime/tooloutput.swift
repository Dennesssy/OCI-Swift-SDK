import Foundation

// MARK: - tooloutput

public struct tooloutput: Codable, Sendable {

    public var jsonData: Data?
    public var toolName: String?
    public var toolId: String?
    public var toolOutputType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, toolName, toolId, toolOutputType
    }

    public init(
                jsonData: Data? = nil,
                toolName: String? = nil,
                toolId: String? = nil,
                toolOutputType: String? = nil
    ) {
        self.jsonData = jsonData
        self.toolName = toolName
        self.toolId = toolId
        self.toolOutputType = toolOutputType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension tooloutput: CustomStringConvertible {
    public var description: String { "tooloutput()" }
}