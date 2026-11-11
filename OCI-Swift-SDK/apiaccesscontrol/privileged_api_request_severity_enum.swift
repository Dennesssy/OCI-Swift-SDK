import Foundation

// MARK: - PrivilegedApiRequestSeverityEnum

public enum PrivilegedApiRequestSeverityEnum: String, Codable, Sendable {
    case sev1 = "SEV_1"
    case sev2 = "SEV_2"
    case sev3 = "SEV_3"
    case sev4 = "SEV_4"
}

public extension PrivilegedApiRequestSeverityEnum {
    static var allValues: [PrivilegedApiRequestSeverityEnum] { [.sev1, .sev2, .sev3, .sev4] }
    static var allStringValues: [String] { ["SEV_1", "SEV_2", "SEV_3", "SEV_4"] }
    static func fromString(_ value: String) -> PrivilegedApiRequestSeverityEnum? { PrivilegedApiRequestSeverityEnum(rawValue: value) }
}