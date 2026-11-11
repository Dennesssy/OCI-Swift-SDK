import Foundation

// MARK: - PatchingModeEnumEnum

public enum PatchingModeEnumEnum: String, Codable, Sendable {
    case rolling = "ROLLING"
    case nonrolling = "NONROLLING"
}

public extension PatchingModeEnumEnum {
    static var allValues: [PatchingModeEnumEnum] { [.rolling, .nonrolling] }
    static var allStringValues: [String] { ["ROLLING", "NONROLLING"] }
    static func fromString(_ value: String) -> PatchingModeEnumEnum? { PatchingModeEnumEnum(rawValue: value) }
}