import Foundation

// MARK: - UpdateLoggingConfigurationDetailsTypeEnum

public enum UpdateLoggingConfigurationDetailsTypeEnum: String, Codable, Sendable {
    case ociLogging = "OCI_LOGGING"
}

public extension UpdateLoggingConfigurationDetailsTypeEnum {
    static var allValues: [UpdateLoggingConfigurationDetailsTypeEnum] { [.ociLogging] }
    static var allStringValues: [String] { ["OCI_LOGGING"] }
    static func fromString(_ value: String) -> UpdateLoggingConfigurationDetailsTypeEnum? { UpdateLoggingConfigurationDetailsTypeEnum(rawValue: value) }
}