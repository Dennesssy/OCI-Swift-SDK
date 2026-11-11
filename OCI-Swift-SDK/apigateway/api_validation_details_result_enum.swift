import Foundation

// MARK: - ApiValidationDetailsResultEnum

public enum ApiValidationDetailsResultEnum: String, Codable, Sendable {
    case error = "ERROR"
    case warning = "WARNING"
    case ok = "OK"
    case failed = "FAILED"
}

public extension ApiValidationDetailsResultEnum {
    static var allValues: [ApiValidationDetailsResultEnum] { [.error, .warning, .ok, .failed] }
    static var allStringValues: [String] { ["ERROR", "WARNING", "OK", "FAILED"] }
    static func fromString(_ value: String) -> ApiValidationDetailsResultEnum? { ApiValidationDetailsResultEnum(rawValue: value) }
}