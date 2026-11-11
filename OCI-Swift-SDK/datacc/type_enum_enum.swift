import Foundation

// MARK: - TypeEnumEnum

public enum TypeEnumEnum: String, Codable, Sendable {
    case notify = "NOTIFY"
    case execute = "EXECUTE"
}

public extension TypeEnumEnum {
    static var allValues: [TypeEnumEnum] { [.notify, .execute] }
    static var allStringValues: [String] { ["NOTIFY", "EXECUTE"] }
    static func fromString(_ value: String) -> TypeEnumEnum? { TypeEnumEnum(rawValue: value) }
}