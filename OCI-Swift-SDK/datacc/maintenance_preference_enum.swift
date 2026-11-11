import Foundation

// MARK: - MaintenancePreferenceEnum

public enum MaintenancePreferenceEnum: String, Codable, Sendable {
    case noPreference = "NO_PREFERENCE"
    case customPreference = "CUSTOM_PREFERENCE"
}

public extension MaintenancePreferenceEnum {
    static var allValues: [MaintenancePreferenceEnum] { [.noPreference, .customPreference] }
    static var allStringValues: [String] { ["NO_PREFERENCE", "CUSTOM_PREFERENCE"] }
    static func fromString(_ value: String) -> MaintenancePreferenceEnum? { MaintenancePreferenceEnum(rawValue: value) }
}