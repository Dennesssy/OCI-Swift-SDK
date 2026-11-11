import Foundation

// MARK: - ResourceLockTypeEnum

public enum ResourceLockTypeEnum: String, Codable, Sendable {
    case full = "FULL"
    case delete = "DELETE"
}

public extension ResourceLockTypeEnum {
    static var allValues: [ResourceLockTypeEnum] { [.full, .delete] }
    static var allStringValues: [String] { ["FULL", "DELETE"] }
    static func fromString(_ value: String) -> ResourceLockTypeEnum? { ResourceLockTypeEnum(rawValue: value) }
}