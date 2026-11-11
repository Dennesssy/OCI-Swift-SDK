import Foundation

// MARK: - SqlToolConfigModelSizeEnum

public enum SqlToolConfigModelSizeEnum: String, Codable, Sendable {
    case small = "SMALL"
    case large = "LARGE"
}

public extension SqlToolConfigModelSizeEnum {
    static var allValues: [SqlToolConfigModelSizeEnum] { [.small, .large] }
    static var allStringValues: [String] { ["SMALL", "LARGE"] }
    static func fromString(_ value: String) -> SqlToolConfigModelSizeEnum? { SqlToolConfigModelSizeEnum(rawValue: value) }
}