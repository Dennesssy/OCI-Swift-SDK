import Foundation

// MARK: - HttpEndpointAuthSourceHttpEndpointAuthScopeEnum

public enum HttpEndpointAuthSourceHttpEndpointAuthScopeEnum: String, Codable, Sendable {
    case agent = "AGENT"
}

public extension HttpEndpointAuthSourceHttpEndpointAuthScopeEnum {
    static var allValues: [HttpEndpointAuthSourceHttpEndpointAuthScopeEnum] { [.agent] }
    static var allStringValues: [String] { ["AGENT"] }
    static func fromString(_ value: String) -> HttpEndpointAuthSourceHttpEndpointAuthScopeEnum? { HttpEndpointAuthSourceHttpEndpointAuthScopeEnum(rawValue: value) }
}