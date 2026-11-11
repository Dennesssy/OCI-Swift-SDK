import Foundation

// MARK: - ExecuteSqlOutputDetailsTypeEnum

public enum ExecuteSqlOutputDetailsTypeEnum: String, Codable, Sendable {
    case objectStorage = "OBJECT_STORAGE"
}

public extension ExecuteSqlOutputDetailsTypeEnum {
    static var allValues: [ExecuteSqlOutputDetailsTypeEnum] { [.objectStorage] }
    static var allStringValues: [String] { ["OBJECT_STORAGE"] }
    static func fromString(_ value: String) -> ExecuteSqlOutputDetailsTypeEnum? { ExecuteSqlOutputDetailsTypeEnum(rawValue: value) }
}