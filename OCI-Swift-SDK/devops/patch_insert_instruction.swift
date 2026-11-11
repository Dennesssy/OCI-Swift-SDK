import Foundation
import OCICommon

// MARK: - PatchInsertInstruction

public struct PatchInsertInstruction: Codable, Sendable {

    public var selection: String?
    public var value: JSONValue?
    public var selectedItem: String?
    public var position: PatchInsertInstructionPositionEnum?

    private enum CodingKeys: String, CodingKey {
        case selection, value, selectedItem, position
    }

    public init(
                selection: String? = nil,
                value: JSONValue? = nil,
                selectedItem: String? = nil,
                position: PatchInsertInstructionPositionEnum? = nil
    ) {
        self.selection = selection
        self.value = value
        self.selectedItem = selectedItem
        self.position = position
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PatchInsertInstruction: CustomStringConvertible {
    public var description: String { "PatchInsertInstruction()" }
}