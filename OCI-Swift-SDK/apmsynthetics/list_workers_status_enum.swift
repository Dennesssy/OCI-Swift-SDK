import Foundation

// MARK: - ListWorkersStatusEnum

public enum ListWorkersStatusEnum: String, Codable, Sendable {
    case enabled = "ENABLED"
    case disabled = "DISABLED"
}

public extension ListWorkersStatusEnum {
    static var allValues: [ListWorkersStatusEnum] { [.enabled, .disabled] }
    static var allStringValues: [String] { ["ENABLED", "DISABLED"] }
    static func fromString(_ value: String) -> ListWorkersStatusEnum? { ListWorkersStatusEnum(rawValue: value) }
}