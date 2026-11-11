import Foundation

// MARK: - AutoActivateStatusStateEnum

public enum AutoActivateStatusStateEnum: String, Codable, Sendable {
    case on = "ON"
    case off = "OFF"
}

public extension AutoActivateStatusStateEnum {
    static var allValues: [AutoActivateStatusStateEnum] { [.on, .off] }
    static var allStringValues: [String] { ["ON", "OFF"] }
    static func fromString(_ value: String) -> AutoActivateStatusStateEnum? { AutoActivateStatusStateEnum(rawValue: value) }
}