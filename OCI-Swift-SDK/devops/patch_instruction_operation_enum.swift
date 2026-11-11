import Foundation

// MARK: - PatchInstructionOperationEnum

public enum PatchInstructionOperationEnum: String, Codable, Sendable {
    case require = "REQUIRE"
    case prohibit = "PROHIBIT"
    case replace = "REPLACE"
    case insert = "INSERT"
    case remove = "REMOVE"
    case move = "MOVE"
    case merge = "MERGE"
}

public extension PatchInstructionOperationEnum {
    static var allValues: [PatchInstructionOperationEnum] { [.require, .prohibit, .replace, .insert, .remove, .move, .merge] }
    static var allStringValues: [String] { ["REQUIRE", "PROHIBIT", "REPLACE", "INSERT", "REMOVE", "MOVE", "MERGE"] }
    static func fromString(_ value: String) -> PatchInstructionOperationEnum? { PatchInstructionOperationEnum(rawValue: value) }
}