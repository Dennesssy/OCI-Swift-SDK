import Foundation

// MARK: - ServiceRoleDetailServiceTypeEnum

public enum ServiceRoleDetailServiceTypeEnum: String, Codable, Sendable {
    case kms = "KMS"
}

public extension ServiceRoleDetailServiceTypeEnum {
    static var allValues: [ServiceRoleDetailServiceTypeEnum] { [.kms] }
    static var allStringValues: [String] { ["KMS"] }
    static func fromString(_ value: String) -> ServiceRoleDetailServiceTypeEnum? { ServiceRoleDetailServiceTypeEnum(rawValue: value) }
}