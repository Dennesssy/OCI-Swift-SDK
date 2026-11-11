import Foundation

// MARK: - AddResourceLockDetailsTypeEnum

public enum AddResourceLockDetailsTypeEnum: String, Codable, Sendable {
    case full = "FULL"
    case delete = "DELETE"
}

public extension AddResourceLockDetailsTypeEnum {
    static var allValues: [AddResourceLockDetailsTypeEnum] { [.full, .delete] }
    static var allStringValues: [String] { ["FULL", "DELETE"] }
    static func fromString(_ value: String) -> AddResourceLockDetailsTypeEnum? { AddResourceLockDetailsTypeEnum(rawValue: value) }
}