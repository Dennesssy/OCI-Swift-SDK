import Foundation

// MARK: - GetResourceAnchorSubscriptionServiceNameEnum

public enum GetResourceAnchorSubscriptionServiceNameEnum: String, Codable, Sendable {
    case oracledbatazure = "ORACLEDBATAZURE"
    case oracledbatgoogle = "ORACLEDBATGOOGLE"
    case oracledbataws = "ORACLEDBATAWS"
}

public extension GetResourceAnchorSubscriptionServiceNameEnum {
    static var allValues: [GetResourceAnchorSubscriptionServiceNameEnum] { [.oracledbatazure, .oracledbatgoogle, .oracledbataws] }
    static var allStringValues: [String] { ["ORACLEDBATAZURE", "ORACLEDBATGOOGLE", "ORACLEDBATAWS"] }
    static func fromString(_ value: String) -> GetResourceAnchorSubscriptionServiceNameEnum? { GetResourceAnchorSubscriptionServiceNameEnum(rawValue: value) }
}