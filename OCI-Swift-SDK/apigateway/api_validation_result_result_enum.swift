import Foundation

// MARK: - ApiValidationResultResultEnum

public enum ApiValidationResultResultEnum: String, Codable, Sendable {
    case error = "ERROR"
    case warning = "WARNING"
    case ok = "OK"
    case failed = "FAILED"
}

public extension ApiValidationResultResultEnum {
    static var allValues: [ApiValidationResultResultEnum] { [.error, .warning, .ok, .failed] }
    static var allStringValues: [String] { ["ERROR", "WARNING", "OK", "FAILED"] }
    static func fromString(_ value: String) -> ApiValidationResultResultEnum? { ApiValidationResultResultEnum(rawValue: value) }
}