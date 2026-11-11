import Foundation

// MARK: - AddLockDetailsTypeEnum

public enum AddLockDetailsTypeEnum: String, Codable, Sendable {
    case full = "FULL"
    case delete = "DELETE"
}

public extension AddLockDetailsTypeEnum {
    static var allValues: [AddLockDetailsTypeEnum] { [.full, .delete] }
    static var allStringValues: [String] { ["FULL", "DELETE"] }
    static func fromString(_ value: String) -> AddLockDetailsTypeEnum? { AddLockDetailsTypeEnum(rawValue: value) }
}