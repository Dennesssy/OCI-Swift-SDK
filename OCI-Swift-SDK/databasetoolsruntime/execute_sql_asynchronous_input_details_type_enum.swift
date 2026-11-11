import Foundation

// MARK: - ExecuteSqlAsynchronousInputDetailsTypeEnum

public enum ExecuteSqlAsynchronousInputDetailsTypeEnum: String, Codable, Sendable {
    case objectStorage = "OBJECT_STORAGE"
    case inline = "INLINE"
}

public extension ExecuteSqlAsynchronousInputDetailsTypeEnum {
    static var allValues: [ExecuteSqlAsynchronousInputDetailsTypeEnum] { [.objectStorage, .inline] }
    static var allStringValues: [String] { ["OBJECT_STORAGE", "INLINE"] }
    static func fromString(_ value: String) -> ExecuteSqlAsynchronousInputDetailsTypeEnum? { ExecuteSqlAsynchronousInputDetailsTypeEnum(rawValue: value) }
}