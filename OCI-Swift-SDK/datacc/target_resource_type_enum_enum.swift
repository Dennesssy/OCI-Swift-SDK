import Foundation

// MARK: - TargetResourceTypeEnumEnum

public enum TargetResourceTypeEnumEnum: String, Codable, Sendable {
    case dbCcInfrastructure = "DB_CC_INFRASTRUCTURE"
}

public extension TargetResourceTypeEnumEnum {
    static var allValues: [TargetResourceTypeEnumEnum] { [.dbCcInfrastructure] }
    static var allStringValues: [String] { ["DB_CC_INFRASTRUCTURE"] }
    static func fromString(_ value: String) -> TargetResourceTypeEnumEnum? { TargetResourceTypeEnumEnum(rawValue: value) }
}