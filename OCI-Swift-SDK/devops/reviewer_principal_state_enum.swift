import Foundation

// MARK: - ReviewerPrincipalStateEnum

public enum ReviewerPrincipalStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case suppressed = "SUPPRESSED"
}

public extension ReviewerPrincipalStateEnum {
    static var allValues: [ReviewerPrincipalStateEnum] { [.active, .inactive, .suppressed] }
    static var allStringValues: [String] { ["ACTIVE", "INACTIVE", "SUPPRESSED"] }
    static func fromString(_ value: String) -> ReviewerPrincipalStateEnum? { ReviewerPrincipalStateEnum(rawValue: value) }
}