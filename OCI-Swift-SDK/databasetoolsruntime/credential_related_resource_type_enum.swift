import Foundation

// MARK: - CredentialRelatedResourceTypeEnum

public enum CredentialRelatedResourceTypeEnum: String, Codable, Sendable {
    case databaseToolsIdentity = "DATABASE_TOOLS_IDENTITY"
}

public extension CredentialRelatedResourceTypeEnum {
    static var allValues: [CredentialRelatedResourceTypeEnum] { [.databaseToolsIdentity] }
    static var allStringValues: [String] { ["DATABASE_TOOLS_IDENTITY"] }
    static func fromString(_ value: String) -> CredentialRelatedResourceTypeEnum? { CredentialRelatedResourceTypeEnum(rawValue: value) }
}