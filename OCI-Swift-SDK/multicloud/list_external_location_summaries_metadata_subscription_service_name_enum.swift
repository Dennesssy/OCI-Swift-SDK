import Foundation

// MARK: - ListExternalLocationSummariesMetadataSubscriptionServiceNameEnum

public enum ListExternalLocationSummariesMetadataSubscriptionServiceNameEnum: String, Codable, Sendable {
    case oracledbatazure = "ORACLEDBATAZURE"
    case oracledbatgoogle = "ORACLEDBATGOOGLE"
    case oracledbataws = "ORACLEDBATAWS"
}

public extension ListExternalLocationSummariesMetadataSubscriptionServiceNameEnum {
    static var allValues: [ListExternalLocationSummariesMetadataSubscriptionServiceNameEnum] { [.oracledbatazure, .oracledbatgoogle, .oracledbataws] }
    static var allStringValues: [String] { ["ORACLEDBATAZURE", "ORACLEDBATGOOGLE", "ORACLEDBATAWS"] }
    static func fromString(_ value: String) -> ListExternalLocationSummariesMetadataSubscriptionServiceNameEnum? { ListExternalLocationSummariesMetadataSubscriptionServiceNameEnum(rawValue: value) }
}