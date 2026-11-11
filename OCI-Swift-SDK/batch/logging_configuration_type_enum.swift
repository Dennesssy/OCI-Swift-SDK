import Foundation

// MARK: - LoggingConfigurationTypeEnum

public enum LoggingConfigurationTypeEnum: String, Codable, Sendable {
    case ociLogging = "OCI_LOGGING"
}

public extension LoggingConfigurationTypeEnum {
    static var allValues: [LoggingConfigurationTypeEnum] { [.ociLogging] }
    static var allStringValues: [String] { ["OCI_LOGGING"] }
    static func fromString(_ value: String) -> LoggingConfigurationTypeEnum? { LoggingConfigurationTypeEnum(rawValue: value) }
}