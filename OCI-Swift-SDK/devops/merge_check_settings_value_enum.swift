import Foundation

// MARK: - MergeCheckSettingsValueEnum

public enum MergeCheckSettingsValueEnum: String, Codable, Sendable {
    case enabled = "ENABLED"
    case disabled = "DISABLED"
}

public extension MergeCheckSettingsValueEnum {
    static var allValues: [MergeCheckSettingsValueEnum] { [.enabled, .disabled] }
    static var allStringValues: [String] { ["ENABLED", "DISABLED"] }
    static func fromString(_ value: String) -> MergeCheckSettingsValueEnum? { MergeCheckSettingsValueEnum(rawValue: value) }
}