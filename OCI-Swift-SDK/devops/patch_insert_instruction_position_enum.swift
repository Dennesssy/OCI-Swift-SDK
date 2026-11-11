import Foundation

// MARK: - PatchInsertInstructionPositionEnum

public enum PatchInsertInstructionPositionEnum: String, Codable, Sendable {
    case before = "BEFORE"
    case after = "AFTER"
}

public extension PatchInsertInstructionPositionEnum {
    static var allValues: [PatchInsertInstructionPositionEnum] { [.before, .after] }
    static var allStringValues: [String] { ["BEFORE", "AFTER"] }
    static func fromString(_ value: String) -> PatchInsertInstructionPositionEnum? { PatchInsertInstructionPositionEnum(rawValue: value) }
}