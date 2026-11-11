import Foundation

// MARK: - JsonWebKeyKeyOpsEnum

public enum JsonWebKeyKeyOpsEnum: String, Codable, Sendable {
    case verify = "verify"
}

public extension JsonWebKeyKeyOpsEnum {
    static var allValues: [JsonWebKeyKeyOpsEnum] { [.verify] }
    static var allStringValues: [String] { ["verify"] }
    static func fromString(_ value: String) -> JsonWebKeyKeyOpsEnum? { JsonWebKeyKeyOpsEnum(rawValue: value) }
}