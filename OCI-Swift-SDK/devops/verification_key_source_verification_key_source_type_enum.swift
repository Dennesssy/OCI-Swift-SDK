import Foundation

// MARK: - VerificationKeySourceVerificationKeySourceTypeEnum

public enum VerificationKeySourceVerificationKeySourceTypeEnum: String, Codable, Sendable {
    case vaultSecret = "VAULT_SECRET"
    case inlinePublicKey = "INLINE_PUBLIC_KEY"
    case none = "NONE"
}

public extension VerificationKeySourceVerificationKeySourceTypeEnum {
    static var allValues: [VerificationKeySourceVerificationKeySourceTypeEnum] { [.vaultSecret, .inlinePublicKey, .none] }
    static var allStringValues: [String] { ["VAULT_SECRET", "INLINE_PUBLIC_KEY", "NONE"] }
    static func fromString(_ value: String) -> VerificationKeySourceVerificationKeySourceTypeEnum? { VerificationKeySourceVerificationKeySourceTypeEnum(rawValue: value) }
}