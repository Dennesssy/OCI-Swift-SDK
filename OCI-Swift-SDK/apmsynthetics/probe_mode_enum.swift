import Foundation

// MARK: - ProbeModeEnum

public enum ProbeModeEnum: String, Codable, Sendable {
    case sack = "SACK"
    case syn = "SYN"
}

public extension ProbeModeEnum {
    static var allValues: [ProbeModeEnum] { [.sack, .syn] }
    static var allStringValues: [String] { ["SACK", "SYN"] }
    static func fromString(_ value: String) -> ProbeModeEnum? { ProbeModeEnum(rawValue: value) }
}