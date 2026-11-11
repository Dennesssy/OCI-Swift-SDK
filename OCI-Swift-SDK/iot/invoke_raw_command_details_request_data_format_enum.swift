import Foundation

// MARK: - InvokeRawCommandDetailsRequestDataFormatEnum

public enum InvokeRawCommandDetailsRequestDataFormatEnum: String, Codable, Sendable {
    case text = "TEXT"
    case json = "JSON"
    case binary = "BINARY"
}

public extension InvokeRawCommandDetailsRequestDataFormatEnum {
    static var allValues: [InvokeRawCommandDetailsRequestDataFormatEnum] { [.text, .json, .binary] }
    static var allStringValues: [String] { ["TEXT", "JSON", "BINARY"] }
    static func fromString(_ value: String) -> InvokeRawCommandDetailsRequestDataFormatEnum? { InvokeRawCommandDetailsRequestDataFormatEnum(rawValue: value) }
}