import Foundation

// MARK: - CreateIdentityProviderDetailsProtocolEnum

public enum CreateIdentityProviderDetailsProtocolEnum: String, Codable, Sendable {
    case saml2 = "SAML2"
    case adfs = "ADFS"
}

public extension CreateIdentityProviderDetailsProtocolEnum {
    static var allValues: [CreateIdentityProviderDetailsProtocolEnum] { [.saml2, .adfs] }
    static var allStringValues: [String] { ["SAML2", "ADFS"] }
    static func fromString(_ value: String) -> CreateIdentityProviderDetailsProtocolEnum? { CreateIdentityProviderDetailsProtocolEnum(rawValue: value) }
}