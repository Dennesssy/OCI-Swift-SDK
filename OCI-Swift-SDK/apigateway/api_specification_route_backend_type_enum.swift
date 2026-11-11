import Foundation

// MARK: - ApiSpecificationRouteBackendTypeEnum

public enum ApiSpecificationRouteBackendTypeEnum: String, Codable, Sendable {
    case oracleFunctionsBackend = "ORACLE_FUNCTIONS_BACKEND"
    case httpBackend = "HTTP_BACKEND"
    case stockResponseBackend = "STOCK_RESPONSE_BACKEND"
    case dynamicRoutingBackend = "DYNAMIC_ROUTING_BACKEND"
    case oauth2LogoutBackend = "OAUTH2_LOGOUT_BACKEND"
    case oauth2LoginBackend = "OAUTH2_LOGIN_BACKEND"
}

public extension ApiSpecificationRouteBackendTypeEnum {
    static var allValues: [ApiSpecificationRouteBackendTypeEnum] { [.oracleFunctionsBackend, .httpBackend, .stockResponseBackend, .dynamicRoutingBackend, .oauth2LogoutBackend, .oauth2LoginBackend] }
    static var allStringValues: [String] { ["ORACLE_FUNCTIONS_BACKEND", "HTTP_BACKEND", "STOCK_RESPONSE_BACKEND", "DYNAMIC_ROUTING_BACKEND", "OAUTH2_LOGOUT_BACKEND", "OAUTH2_LOGIN_BACKEND"] }
    static func fromString(_ value: String) -> ApiSpecificationRouteBackendTypeEnum? { ApiSpecificationRouteBackendTypeEnum(rawValue: value) }
}