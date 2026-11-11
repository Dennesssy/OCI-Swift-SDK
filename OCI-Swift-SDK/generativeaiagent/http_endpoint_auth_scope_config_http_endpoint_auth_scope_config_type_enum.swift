import Foundation

// MARK: - HttpEndpointAuthScopeConfigHttpEndpointAuthScopeConfigTypeEnum

public enum HttpEndpointAuthScopeConfigHttpEndpointAuthScopeConfigTypeEnum: String, Codable, Sendable {
    case noAuthScopeConfig = "HTTP_ENDPOINT_NO_AUTH_SCOPE_CONFIG"
    case basicAuthScopeConfig = "HTTP_ENDPOINT_BASIC_AUTH_SCOPE_CONFIG"
    case bearerAuthScopeConfig = "HTTP_ENDPOINT_BEARER_AUTH_SCOPE_CONFIG"
    case apiKeyAuthScopeConfig = "HTTP_ENDPOINT_API_KEY_AUTH_SCOPE_CONFIG"
    case idcsAuthScopeConfig = "HTTP_ENDPOINT_IDCS_AUTH_SCOPE_CONFIG"
    case ociAuthScopeConfig = "HTTP_ENDPOINT_OCI_AUTH_SCOPE_CONFIG"
}

public extension HttpEndpointAuthScopeConfigHttpEndpointAuthScopeConfigTypeEnum {
    static var allValues: [HttpEndpointAuthScopeConfigHttpEndpointAuthScopeConfigTypeEnum] { [.noAuthScopeConfig, .basicAuthScopeConfig, .bearerAuthScopeConfig, .apiKeyAuthScopeConfig, .idcsAuthScopeConfig, .ociAuthScopeConfig] }
    static var allStringValues: [String] { ["HTTP_ENDPOINT_NO_AUTH_SCOPE_CONFIG", "HTTP_ENDPOINT_BASIC_AUTH_SCOPE_CONFIG", "HTTP_ENDPOINT_BEARER_AUTH_SCOPE_CONFIG", "HTTP_ENDPOINT_API_KEY_AUTH_SCOPE_CONFIG", "HTTP_ENDPOINT_IDCS_AUTH_SCOPE_CONFIG", "HTTP_ENDPOINT_OCI_AUTH_SCOPE_CONFIG"] }
    static func fromString(_ value: String) -> HttpEndpointAuthScopeConfigHttpEndpointAuthScopeConfigTypeEnum? { HttpEndpointAuthScopeConfigHttpEndpointAuthScopeConfigTypeEnum(rawValue: value) }
}