import Foundation

// MARK: - ListMulticloudResourcesSubscriptionServiceNameEnum

public enum ListMulticloudResourcesSubscriptionServiceNameEnum: String, Codable, Sendable {
    case oracledbatazure = "ORACLEDBATAZURE"
    case oracledbatgoogle = "ORACLEDBATGOOGLE"
    case oracledbataws = "ORACLEDBATAWS"
}

public extension ListMulticloudResourcesSubscriptionServiceNameEnum {
    static var allValues: [ListMulticloudResourcesSubscriptionServiceNameEnum] { [.oracledbatazure, .oracledbatgoogle, .oracledbataws] }
    static var allStringValues: [String] { ["ORACLEDBATAZURE", "ORACLEDBATGOOGLE", "ORACLEDBATAWS"] }
    static func fromString(_ value: String) -> ListMulticloudResourcesSubscriptionServiceNameEnum? { ListMulticloudResourcesSubscriptionServiceNameEnum(rawValue: value) }
}