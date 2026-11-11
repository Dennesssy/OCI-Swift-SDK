import Foundation

// MARK: - CredentialKeyTypeEnum

public enum CredentialKeyTypeEnum: String, Codable, Sendable {
    case credentialName = "CREDENTIAL_NAME"
    case publicSynonym = "PUBLIC_SYNONYM"
}

public extension CredentialKeyTypeEnum {
    static var allValues: [CredentialKeyTypeEnum] { [.credentialName, .publicSynonym] }
    static var allStringValues: [String] { ["CREDENTIAL_NAME", "PUBLIC_SYNONYM"] }
    static func fromString(_ value: String) -> CredentialKeyTypeEnum? { CredentialKeyTypeEnum(rawValue: value) }
}