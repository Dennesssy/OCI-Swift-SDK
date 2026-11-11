import Foundation

// MARK: - AuditReportStatusEnum

public enum AuditReportStatusEnum: String, Codable, Sendable {
    case notavailable = "NOTAVAILABLE"
    case available = "AVAILABLE"
    case expired = "EXPIRED"
    case failed = "FAILED"
}

public extension AuditReportStatusEnum {
    static var allValues: [AuditReportStatusEnum] { [.notavailable, .available, .expired, .failed] }
    static var allStringValues: [String] { ["NOTAVAILABLE", "AVAILABLE", "EXPIRED", "FAILED"] }
    static func fromString(_ value: String) -> AuditReportStatusEnum? { AuditReportStatusEnum(rawValue: value) }
}