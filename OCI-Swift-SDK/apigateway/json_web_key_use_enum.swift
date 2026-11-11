import Foundation

// MARK: - JsonWebKeyUseEnum

public enum JsonWebKeyUseEnum: String, Codable, Sendable {
    case sig = "sig"
}

public extension JsonWebKeyUseEnum {
    static var allValues: [JsonWebKeyUseEnum] { [.sig] }
    static var allStringValues: [String] { ["sig"] }
    static func fromString(_ value: String) -> JsonWebKeyUseEnum? { JsonWebKeyUseEnum(rawValue: value) }
}