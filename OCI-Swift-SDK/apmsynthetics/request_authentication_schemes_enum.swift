import Foundation

// MARK: - RequestAuthenticationSchemesEnum

public enum RequestAuthenticationSchemesEnum: String, Codable, Sendable {
    case oauth = "OAUTH"
    case none = "NONE"
    case basic = "BASIC"
    case bearer = "BEARER"
    case resourcePrincipal = "RESOURCE_PRINCIPAL"
}

public extension RequestAuthenticationSchemesEnum {
    static var allValues: [RequestAuthenticationSchemesEnum] { [.oauth, .none, .basic, .bearer, .resourcePrincipal] }
    static var allStringValues: [String] { ["OAUTH", "NONE", "BASIC", "BEARER", "RESOURCE_PRINCIPAL"] }
    static func fromString(_ value: String) -> RequestAuthenticationSchemesEnum? { RequestAuthenticationSchemesEnum(rawValue: value) }
}