import Foundation

// MARK: - SpanSourceNameEnum

public enum SpanSourceNameEnum: String, Codable, Sendable {
    case spans = "SPANS"
    case synSpans = "SYN_SPANS"
}

public extension SpanSourceNameEnum {
    static var allValues: [SpanSourceNameEnum] { [.spans, .synSpans] }
    static var allStringValues: [String] { ["SPANS", "SYN_SPANS"] }
    static func fromString(_ value: String) -> SpanSourceNameEnum? { SpanSourceNameEnum(rawValue: value) }
}