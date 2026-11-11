import Foundation

// MARK: - PrincipalDetailsPrincipalTypeEnum

public enum PrincipalDetailsPrincipalTypeEnum: String, Codable, Sendable {
    case service = "SERVICE"
    case user = "USER"
    case instance = "INSTANCE"
    case resource = "RESOURCE"
}

public extension PrincipalDetailsPrincipalTypeEnum {
    static var allValues: [PrincipalDetailsPrincipalTypeEnum] { [.service, .user, .instance, .resource] }
    static var allStringValues: [String] { ["SERVICE", "USER", "INSTANCE", "RESOURCE"] }
    static func fromString(_ value: String) -> PrincipalDetailsPrincipalTypeEnum? { PrincipalDetailsPrincipalTypeEnum(rawValue: value) }
}