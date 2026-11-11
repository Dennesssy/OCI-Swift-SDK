import Foundation

// MARK: - AttributeResponseAttributeTypeEnum

public enum AttributeResponseAttributeTypeEnum: String, Codable, Sendable {
    case numeric = "NUMERIC"
    case string = "STRING"
}

public extension AttributeResponseAttributeTypeEnum {
    static var allValues: [AttributeResponseAttributeTypeEnum] { [.numeric, .string] }
    static var allStringValues: [String] { ["NUMERIC", "STRING"] }
    static func fromString(_ value: String) -> AttributeResponseAttributeTypeEnum? { AttributeResponseAttributeTypeEnum(rawValue: value) }
}