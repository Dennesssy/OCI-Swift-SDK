import Foundation

// MARK: - ListExternalLocationDetailsMetadataSubscriptionServiceNameEnum

public enum ListExternalLocationDetailsMetadataSubscriptionServiceNameEnum: String, Codable, Sendable {
    case oracledbatazure = "ORACLEDBATAZURE"
    case oracledbatgoogle = "ORACLEDBATGOOGLE"
    case oracledbataws = "ORACLEDBATAWS"
}

public extension ListExternalLocationDetailsMetadataSubscriptionServiceNameEnum {
    static var allValues: [ListExternalLocationDetailsMetadataSubscriptionServiceNameEnum] { [.oracledbatazure, .oracledbatgoogle, .oracledbataws] }
    static var allStringValues: [String] { ["ORACLEDBATAZURE", "ORACLEDBATGOOGLE", "ORACLEDBATAWS"] }
    static func fromString(_ value: String) -> ListExternalLocationDetailsMetadataSubscriptionServiceNameEnum? { ListExternalLocationDetailsMetadataSubscriptionServiceNameEnum(rawValue: value) }
}