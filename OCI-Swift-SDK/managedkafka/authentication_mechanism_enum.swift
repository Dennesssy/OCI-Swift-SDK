import Foundation

// MARK: - AuthenticationMechanismEnum

public enum AuthenticationMechanismEnum: String, Codable, Sendable {
    case sasl = "SASL"
    case mtls = "MTLS"
}

public extension AuthenticationMechanismEnum {
    static var allValues: [AuthenticationMechanismEnum] { [.sasl, .mtls] }
    static var allStringValues: [String] { ["SASL", "MTLS"] }
    static func fromString(_ value: String) -> AuthenticationMechanismEnum? { AuthenticationMechanismEnum(rawValue: value) }
}