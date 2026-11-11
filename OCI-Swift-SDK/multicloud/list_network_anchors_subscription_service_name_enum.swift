import Foundation

// MARK: - ListNetworkAnchorsSubscriptionServiceNameEnum

public enum ListNetworkAnchorsSubscriptionServiceNameEnum: String, Codable, Sendable {
    case oracledbatazure = "ORACLEDBATAZURE"
    case oracledbatgoogle = "ORACLEDBATGOOGLE"
    case oracledbataws = "ORACLEDBATAWS"
}

public extension ListNetworkAnchorsSubscriptionServiceNameEnum {
    static var allValues: [ListNetworkAnchorsSubscriptionServiceNameEnum] { [.oracledbatazure, .oracledbatgoogle, .oracledbataws] }
    static var allStringValues: [String] { ["ORACLEDBATAZURE", "ORACLEDBATGOOGLE", "ORACLEDBATAWS"] }
    static func fromString(_ value: String) -> ListNetworkAnchorsSubscriptionServiceNameEnum? { ListNetworkAnchorsSubscriptionServiceNameEnum(rawValue: value) }
}