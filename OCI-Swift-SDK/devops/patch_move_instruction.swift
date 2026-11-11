import Foundation

// MARK: - PatchMoveInstruction

public struct PatchMoveInstruction: Codable, Sendable {

    public var selection: String?
    public var from: String?
    public var position: PatchMoveInstructionPositionEnum?

    private enum CodingKeys: String, CodingKey {
        case selection, from, position
    }

    public init(
                selection: String? = nil,
                from: String? = nil,
                position: PatchMoveInstructionPositionEnum? = nil
    ) {
        self.selection = selection
        self.from = from
        self.position = position
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PatchMoveInstruction: CustomStringConvertible {
    public var description: String { "PatchMoveInstruction()" }
}