import Foundation

// MARK: - PatchMoveInstructionPositionEnum

public enum PatchMoveInstructionPositionEnum: String, Codable, Sendable {
    case at = "AT"
    case before = "BEFORE"
    case after = "AFTER"
}

public extension PatchMoveInstructionPositionEnum {
    static var allValues: [PatchMoveInstructionPositionEnum] { [.at, .before, .after] }
    static var allStringValues: [String] { ["AT", "BEFORE", "AFTER"] }
    static func fromString(_ value: String) -> PatchMoveInstructionPositionEnum? { PatchMoveInstructionPositionEnum(rawValue: value) }
}