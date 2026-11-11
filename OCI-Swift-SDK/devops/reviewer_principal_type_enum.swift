import Foundation

// MARK: - ReviewerPrincipalTypeEnum

public enum ReviewerPrincipalTypeEnum: String, Codable, Sendable {
    case service = "SERVICE"
    case user = "USER"
    case instance = "INSTANCE"
    case resource = "RESOURCE"
}

public extension ReviewerPrincipalTypeEnum {
    static var allValues: [ReviewerPrincipalTypeEnum] { [.service, .user, .instance, .resource] }
    static var allStringValues: [String] { ["SERVICE", "USER", "INSTANCE", "RESOURCE"] }
    static func fromString(_ value: String) -> ReviewerPrincipalTypeEnum? { ReviewerPrincipalTypeEnum(rawValue: value) }
}