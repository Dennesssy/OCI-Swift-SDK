import Foundation
import OCICommon

// MARK: - GenericToolOutput

public struct GenericToolOutput: Codable, Sendable {

    public var toolId: String?
    public var output: JSONValue?
    public var toolName: String?

    private enum CodingKeys: String, CodingKey {
        case toolId, output, toolName
    }

    public init(
                toolId: String? = nil,
                output: JSONValue? = nil,
                toolName: String? = nil
    ) {
        self.toolId = toolId
        self.output = output
        self.toolName = toolName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GenericToolOutput: CustomStringConvertible {
    public var description: String { "GenericToolOutput()" }
}