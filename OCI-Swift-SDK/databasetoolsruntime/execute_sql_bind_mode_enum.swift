import Foundation

// MARK: - ExecuteSqlBindModeEnum

public enum ExecuteSqlBindModeEnum: String, Codable, Sendable {
    case `in` = "IN"
    case `inout` = "INOUT"
    case out = "OUT"
}

public extension ExecuteSqlBindModeEnum {
    static var allValues: [ExecuteSqlBindModeEnum] { [.`in`, .`inout`, .out] }
    static var allStringValues: [String] { ["IN", "INOUT", "OUT"] }
    static func fromString(_ value: String) -> ExecuteSqlBindModeEnum? { ExecuteSqlBindModeEnum(rawValue: value) }
}