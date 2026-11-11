import Foundation

// MARK: - ExecuteSqlOutputDispositionDetailsTypeEnum

public enum ExecuteSqlOutputDispositionDetailsTypeEnum: String, Codable, Sendable {
    case objectStorage = "OBJECT_STORAGE"
}

public extension ExecuteSqlOutputDispositionDetailsTypeEnum {
    static var allValues: [ExecuteSqlOutputDispositionDetailsTypeEnum] { [.objectStorage] }
    static var allStringValues: [String] { ["OBJECT_STORAGE"] }
    static func fromString(_ value: String) -> ExecuteSqlOutputDispositionDetailsTypeEnum? { ExecuteSqlOutputDispositionDetailsTypeEnum(rawValue: value) }
}