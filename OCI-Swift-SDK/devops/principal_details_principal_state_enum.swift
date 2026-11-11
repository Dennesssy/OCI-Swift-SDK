import Foundation

// MARK: - PrincipalDetailsPrincipalStateEnum

public enum PrincipalDetailsPrincipalStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case suppressed = "SUPPRESSED"
}

public extension PrincipalDetailsPrincipalStateEnum {
    static var allValues: [PrincipalDetailsPrincipalStateEnum] { [.active, .inactive, .suppressed] }
    static var allStringValues: [String] { ["ACTIVE", "INACTIVE", "SUPPRESSED"] }
    static func fromString(_ value: String) -> PrincipalDetailsPrincipalStateEnum? { PrincipalDetailsPrincipalStateEnum(rawValue: value) }
}