import Foundation

// MARK: - ListMulticloudAlertsSubscriptionServiceNameEnum

public enum ListMulticloudAlertsSubscriptionServiceNameEnum: String, Codable, Sendable {
    case oracledbatazure = "ORACLEDBATAZURE"
    case oracledbatgoogle = "ORACLEDBATGOOGLE"
    case oracledbataws = "ORACLEDBATAWS"
}

public extension ListMulticloudAlertsSubscriptionServiceNameEnum {
    static var allValues: [ListMulticloudAlertsSubscriptionServiceNameEnum] { [.oracledbatazure, .oracledbatgoogle, .oracledbataws] }
    static var allStringValues: [String] { ["ORACLEDBATAZURE", "ORACLEDBATGOOGLE", "ORACLEDBATAWS"] }
    static func fromString(_ value: String) -> ListMulticloudAlertsSubscriptionServiceNameEnum? { ListMulticloudAlertsSubscriptionServiceNameEnum(rawValue: value) }
}