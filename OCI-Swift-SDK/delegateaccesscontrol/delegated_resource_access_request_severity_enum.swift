import Foundation

// MARK: - DelegatedResourceAccessRequestSeverityEnum

public enum DelegatedResourceAccessRequestSeverityEnum: String, Codable, Sendable {
    case s1 = "S1"
    case s2 = "S2"
    case s3 = "S3"
    case s4 = "S4"
}

public extension DelegatedResourceAccessRequestSeverityEnum {
    static var allValues: [DelegatedResourceAccessRequestSeverityEnum] { [.s1, .s2, .s3, .s4] }
    static var allStringValues: [String] { ["S1", "S2", "S3", "S4"] }
    static func fromString(_ value: String) -> DelegatedResourceAccessRequestSeverityEnum? { DelegatedResourceAccessRequestSeverityEnum(rawValue: value) }
}