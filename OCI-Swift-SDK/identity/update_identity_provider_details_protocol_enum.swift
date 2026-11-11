import Foundation

// MARK: - UpdateIdentityProviderDetailsProtocolEnum

public enum UpdateIdentityProviderDetailsProtocolEnum: String, Codable, Sendable {
    case saml2 = "SAML2"
}

public extension UpdateIdentityProviderDetailsProtocolEnum {
    static var allValues: [UpdateIdentityProviderDetailsProtocolEnum] { [.saml2] }
    static var allStringValues: [String] { ["SAML2"] }
    static func fromString(_ value: String) -> UpdateIdentityProviderDetailsProtocolEnum? { UpdateIdentityProviderDetailsProtocolEnum(rawValue: value) }
}