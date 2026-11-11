import Foundation

// MARK: - ServiceRoleDetailsServiceTypeEnum

public enum ServiceRoleDetailsServiceTypeEnum: String, Codable, Sendable {
    case kms = "KMS"
}

public extension ServiceRoleDetailsServiceTypeEnum {
    static var allValues: [ServiceRoleDetailsServiceTypeEnum] { [.kms] }
    static var allStringValues: [String] { ["KMS"] }
    static func fromString(_ value: String) -> ServiceRoleDetailsServiceTypeEnum? { ServiceRoleDetailsServiceTypeEnum(rawValue: value) }
}