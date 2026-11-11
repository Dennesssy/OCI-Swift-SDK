import Foundation

// MARK: - SandboxPublishedPortAuthModeEnum

public enum SandboxPublishedPortAuthModeEnum: String, Codable, Sendable {
    case ociIam = "OCI_IAM"
}

public extension SandboxPublishedPortAuthModeEnum {
    static var allValues: [SandboxPublishedPortAuthModeEnum] { [.ociIam] }
    static var allStringValues: [String] { ["OCI_IAM"] }
    static func fromString(_ value: String) -> SandboxPublishedPortAuthModeEnum? { SandboxPublishedPortAuthModeEnum(rawValue: value) }
}