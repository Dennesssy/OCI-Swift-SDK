import Foundation

// MARK: - ApiValidationDetailSeverityEnum

public enum ApiValidationDetailSeverityEnum: String, Codable, Sendable {
    case info = "INFO"
    case warning = "WARNING"
    case error = "ERROR"
}

public extension ApiValidationDetailSeverityEnum {
    static var allValues: [ApiValidationDetailSeverityEnum] { [.info, .warning, .error] }
    static var allStringValues: [String] { ["INFO", "WARNING", "ERROR"] }
    static func fromString(_ value: String) -> ApiValidationDetailSeverityEnum? { ApiValidationDetailSeverityEnum(rawValue: value) }
}