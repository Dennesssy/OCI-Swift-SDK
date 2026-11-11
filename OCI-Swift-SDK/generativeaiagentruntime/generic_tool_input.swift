import Foundation
import OCICommon

// MARK: - GenericToolInput

public struct GenericToolInput: Codable, Sendable {

    public var toolId: String?
    public var input: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case toolId, input
    }

    public init(
                toolId: String? = nil,
                input: JSONValue? = nil
    ) {
        self.toolId = toolId
        self.input = input
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GenericToolInput: CustomStringConvertible {
    public var description: String { "GenericToolInput()" }
}