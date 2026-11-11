import Foundation

// MARK: - ApiSpecificationRouteMethodsEnum

public enum ApiSpecificationRouteMethodsEnum: String, Codable, Sendable {
    case `any` = "ANY"
    case head = "HEAD"
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
    case options = "OPTIONS"
}

public extension ApiSpecificationRouteMethodsEnum {
    static var allValues: [ApiSpecificationRouteMethodsEnum] { [.`any`, .head, .get, .post, .put, .patch, .delete, .options] }
    static var allStringValues: [String] { ["ANY", "HEAD", "GET", "POST", "PUT", "PATCH", "DELETE", "OPTIONS"] }
    static func fromString(_ value: String) -> ApiSpecificationRouteMethodsEnum? { ApiSpecificationRouteMethodsEnum(rawValue: value) }
}