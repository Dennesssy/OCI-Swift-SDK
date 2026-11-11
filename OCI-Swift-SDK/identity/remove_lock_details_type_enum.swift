import Foundation

// MARK: - RemoveLockDetailsTypeEnum

public enum RemoveLockDetailsTypeEnum: String, Codable, Sendable {
    case full = "FULL"
    case delete = "DELETE"
}

public extension RemoveLockDetailsTypeEnum {
    static var allValues: [RemoveLockDetailsTypeEnum] { [.full, .delete] }
    static var allStringValues: [String] { ["FULL", "DELETE"] }
    static func fromString(_ value: String) -> RemoveLockDetailsTypeEnum? { RemoveLockDetailsTypeEnum(rawValue: value) }
}