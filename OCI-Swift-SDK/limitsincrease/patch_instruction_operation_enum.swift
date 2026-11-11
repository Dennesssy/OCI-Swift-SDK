import Foundation

// MARK: - PatchInstructionOperationEnum

public enum PatchInstructionOperationEnum: String, Codable, Sendable {
    case insert = "INSERT"
}

public extension PatchInstructionOperationEnum {
    static var allValues: [PatchInstructionOperationEnum] { [.insert] }
    static var allStringValues: [String] { ["INSERT"] }
    static func fromString(_ value: String) -> PatchInstructionOperationEnum? { PatchInstructionOperationEnum(rawValue: value) }
}