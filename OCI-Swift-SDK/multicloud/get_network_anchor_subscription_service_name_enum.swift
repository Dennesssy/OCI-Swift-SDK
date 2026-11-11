import Foundation

// MARK: - GetNetworkAnchorSubscriptionServiceNameEnum

public enum GetNetworkAnchorSubscriptionServiceNameEnum: String, Codable, Sendable {
    case oracledbatazure = "ORACLEDBATAZURE"
    case oracledbatgoogle = "ORACLEDBATGOOGLE"
    case oracledbataws = "ORACLEDBATAWS"
}

public extension GetNetworkAnchorSubscriptionServiceNameEnum {
    static var allValues: [GetNetworkAnchorSubscriptionServiceNameEnum] { [.oracledbatazure, .oracledbatgoogle, .oracledbataws] }
    static var allStringValues: [String] { ["ORACLEDBATAZURE", "ORACLEDBATGOOGLE", "ORACLEDBATAWS"] }
    static func fromString(_ value: String) -> GetNetworkAnchorSubscriptionServiceNameEnum? { GetNetworkAnchorSubscriptionServiceNameEnum(rawValue: value) }
}