import Foundation

// MARK: - AutoActivateToggleStatusStatusEnum

public enum AutoActivateToggleStatusStatusEnum: String, Codable, Sendable {
    case success = "SUCCESS"
}

public extension AutoActivateToggleStatusStatusEnum {
    static var allValues: [AutoActivateToggleStatusStatusEnum] { [.success] }
    static var allStringValues: [String] { ["SUCCESS"] }
    static func fromString(_ value: String) -> AutoActivateToggleStatusStatusEnum? { AutoActivateToggleStatusStatusEnum(rawValue: value) }
}