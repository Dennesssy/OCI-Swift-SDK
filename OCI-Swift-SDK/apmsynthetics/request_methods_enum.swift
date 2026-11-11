import Foundation

// MARK: - RequestMethodsEnum

public enum RequestMethodsEnum: String, Codable, Sendable {
    case get = "GET"
    case post = "POST"
}

public extension RequestMethodsEnum {
    static var allValues: [RequestMethodsEnum] { [.get, .post] }
    static var allStringValues: [String] { ["GET", "POST"] }
    static func fromString(_ value: String) -> RequestMethodsEnum? { RequestMethodsEnum(rawValue: value) }
}