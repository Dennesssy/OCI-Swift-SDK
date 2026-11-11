import Foundation

// MARK: - ListResourceAnchorsSubscriptionServiceNameEnum

public enum ListResourceAnchorsSubscriptionServiceNameEnum: String, Codable, Sendable {
    case oracledbatazure = "ORACLEDBATAZURE"
    case oracledbatgoogle = "ORACLEDBATGOOGLE"
    case oracledbataws = "ORACLEDBATAWS"
}

public extension ListResourceAnchorsSubscriptionServiceNameEnum {
    static var allValues: [ListResourceAnchorsSubscriptionServiceNameEnum] { [.oracledbatazure, .oracledbatgoogle, .oracledbataws] }
    static var allStringValues: [String] { ["ORACLEDBATAZURE", "ORACLEDBATGOOGLE", "ORACLEDBATAWS"] }
    static func fromString(_ value: String) -> ListResourceAnchorsSubscriptionServiceNameEnum? { ListResourceAnchorsSubscriptionServiceNameEnum(rawValue: value) }
}