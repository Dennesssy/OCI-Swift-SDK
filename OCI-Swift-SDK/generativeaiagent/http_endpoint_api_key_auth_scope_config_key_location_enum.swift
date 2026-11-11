import Foundation

// MARK: - HttpEndpointApiKeyAuthScopeConfigKeyLocationEnum

public enum HttpEndpointApiKeyAuthScopeConfigKeyLocationEnum: String, Codable, Sendable {
    case header = "HEADER"
    case queryParameter = "QUERY_PARAMETER"
}

public extension HttpEndpointApiKeyAuthScopeConfigKeyLocationEnum {
    static var allValues: [HttpEndpointApiKeyAuthScopeConfigKeyLocationEnum] { [.header, .queryParameter] }
    static var allStringValues: [String] { ["HEADER", "QUERY_PARAMETER"] }
    static func fromString(_ value: String) -> HttpEndpointApiKeyAuthScopeConfigKeyLocationEnum? { HttpEndpointApiKeyAuthScopeConfigKeyLocationEnum(rawValue: value) }
}