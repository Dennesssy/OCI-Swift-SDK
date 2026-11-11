import Foundation

// MARK: - RemoveResourceLockDetailsTypeEnum

public enum RemoveResourceLockDetailsTypeEnum: String, Codable, Sendable {
    case full = "FULL"
    case delete = "DELETE"
}

public extension RemoveResourceLockDetailsTypeEnum {
    static var allValues: [RemoveResourceLockDetailsTypeEnum] { [.full, .delete] }
    static var allStringValues: [String] { ["FULL", "DELETE"] }
    static func fromString(_ value: String) -> RemoveResourceLockDetailsTypeEnum? { RemoveResourceLockDetailsTypeEnum(rawValue: value) }
}