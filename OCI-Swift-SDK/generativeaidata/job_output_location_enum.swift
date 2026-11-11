import Foundation

// MARK: - JobOutputLocationEnum

public enum JobOutputLocationEnum: String, Codable, Sendable {
    case inline = "INLINE"
}

public extension JobOutputLocationEnum {
    static var allValues: [JobOutputLocationEnum] { [.inline] }
    static var allStringValues: [String] { ["INLINE"] }
    static func fromString(_ value: String) -> JobOutputLocationEnum? { JobOutputLocationEnum(rawValue: value) }
}