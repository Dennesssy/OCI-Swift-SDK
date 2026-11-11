import Foundation

// MARK: - InfrastructureTypeEnum

public enum InfrastructureTypeEnum: String, Codable, Sendable {
    case cloud = "CLOUD"
    case cloudAtCustomer = "CLOUD_AT_CUSTOMER"
}

public extension InfrastructureTypeEnum {
    static var allValues: [InfrastructureTypeEnum] { [.cloud, .cloudAtCustomer] }
    static var allStringValues: [String] { ["CLOUD", "CLOUD_AT_CUSTOMER"] }
    static func fromString(_ value: String) -> InfrastructureTypeEnum? { InfrastructureTypeEnum(rawValue: value) }
}