import Foundation

// MARK: - ListIdentityProvidersProtocolEnum

public enum ListIdentityProvidersProtocolEnum: String, Codable, Sendable {
    case saml2 = "SAML2"
}

public extension ListIdentityProvidersProtocolEnum {
    static var allValues: [ListIdentityProvidersProtocolEnum] { [.saml2] }
    static var allStringValues: [String] { ["SAML2"] }
    static func fromString(_ value: String) -> ListIdentityProvidersProtocolEnum? { ListIdentityProvidersProtocolEnum(rawValue: value) }
}