import Foundation

// MARK: - SubscriptionTypeEnum

public enum SubscriptionTypeEnum: String, Codable, Sendable {
    case oracledbatazure = "ORACLEDBATAZURE"
    case oracledbatgoogle = "ORACLEDBATGOOGLE"
    case oracledbataws = "ORACLEDBATAWS"
}

public extension SubscriptionTypeEnum {
    static var allValues: [SubscriptionTypeEnum] { [.oracledbatazure, .oracledbatgoogle, .oracledbataws] }
    static var allStringValues: [String] { ["ORACLEDBATAZURE", "ORACLEDBATGOOGLE", "ORACLEDBATAWS"] }
    static func fromString(_ value: String) -> SubscriptionTypeEnum? { SubscriptionTypeEnum(rawValue: value) }
}