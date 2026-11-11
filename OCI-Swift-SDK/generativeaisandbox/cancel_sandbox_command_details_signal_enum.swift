import Foundation

// MARK: - CancelSandboxCommandDetailsSignalEnum

public enum CancelSandboxCommandDetailsSignalEnum: String, Codable, Sendable {
    case sigterm = "SIGTERM"
    case sigkill = "SIGKILL"
}

public extension CancelSandboxCommandDetailsSignalEnum {
    static var allValues: [CancelSandboxCommandDetailsSignalEnum] { [.sigterm, .sigkill] }
    static var allStringValues: [String] { ["SIGTERM", "SIGKILL"] }
    static func fromString(_ value: String) -> CancelSandboxCommandDetailsSignalEnum? { CancelSandboxCommandDetailsSignalEnum(rawValue: value) }
}