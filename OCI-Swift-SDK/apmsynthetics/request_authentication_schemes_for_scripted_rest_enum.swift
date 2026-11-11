import Foundation

// MARK: - RequestAuthenticationSchemesForScriptedRestEnum

public enum RequestAuthenticationSchemesForScriptedRestEnum: String, Codable, Sendable {
    case none = "NONE"
    case resourcePrincipal = "RESOURCE_PRINCIPAL"
}

public extension RequestAuthenticationSchemesForScriptedRestEnum {
    static var allValues: [RequestAuthenticationSchemesForScriptedRestEnum] { [.none, .resourcePrincipal] }
    static var allStringValues: [String] { ["NONE", "RESOURCE_PRINCIPAL"] }
    static func fromString(_ value: String) -> RequestAuthenticationSchemesForScriptedRestEnum? { RequestAuthenticationSchemesForScriptedRestEnum(rawValue: value) }
}