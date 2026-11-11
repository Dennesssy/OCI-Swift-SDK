import Foundation

// MARK: - JsonWebKeyKtyEnum

public enum JsonWebKeyKtyEnum: String, Codable, Sendable {
    case rsa = "RSA"
}

public extension JsonWebKeyKtyEnum {
    static var allValues: [JsonWebKeyKtyEnum] { [.rsa] }
    static var allStringValues: [String] { ["RSA"] }
    static func fromString(_ value: String) -> JsonWebKeyKtyEnum? { JsonWebKeyKtyEnum(rawValue: value) }
}