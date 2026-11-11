import Foundation

// MARK: - ServiceProviderServiceProviderTypeEnum

public enum ServiceProviderServiceProviderTypeEnum: String, Codable, Sendable {
    case oracleProvided = "ORACLE_PROVIDED"
}

public extension ServiceProviderServiceProviderTypeEnum {
    static var allValues: [ServiceProviderServiceProviderTypeEnum] { [.oracleProvided] }
    static var allStringValues: [String] { ["ORACLE_PROVIDED"] }
    static func fromString(_ value: String) -> ServiceProviderServiceProviderTypeEnum? { ServiceProviderServiceProviderTypeEnum(rawValue: value) }
}