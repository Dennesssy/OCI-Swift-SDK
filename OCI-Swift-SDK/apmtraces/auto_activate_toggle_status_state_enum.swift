import Foundation

// MARK: - AutoActivateToggleStatusStateEnum

public enum AutoActivateToggleStatusStateEnum: String, Codable, Sendable {
    case on = "ON"
    case off = "OFF"
}

public extension AutoActivateToggleStatusStateEnum {
    static var allValues: [AutoActivateToggleStatusStateEnum] { [.on, .off] }
    static var allStringValues: [String] { ["ON", "OFF"] }
    static func fromString(_ value: String) -> AutoActivateToggleStatusStateEnum? { AutoActivateToggleStatusStateEnum(rawValue: value) }
}