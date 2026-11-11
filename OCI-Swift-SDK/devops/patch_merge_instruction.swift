import Foundation
import OCICommon

// MARK: - PatchMergeInstruction

public struct PatchMergeInstruction: Codable, Sendable {

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

extension PatchMergeInstruction: CustomStringConvertible {
    public var description: String { "PatchMergeInstruction()" }
}