import Foundation
import OCICommon

// MARK: - PatchReplaceInstruction

public struct PatchReplaceInstruction: Codable, Sendable {

    public var selection: String?
    public var value: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case selection, value
    }

    public init(
                selection: String? = nil,
                value: JSONValue? = nil
    ) {
        self.selection = selection
        self.value = value
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PatchReplaceInstruction: CustomStringConvertible {
    public var description: String { "PatchReplaceInstruction()" }
}