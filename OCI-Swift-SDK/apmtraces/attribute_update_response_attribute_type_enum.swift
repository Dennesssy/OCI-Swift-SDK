import Foundation

// MARK: - AttributeUpdateResponseAttributeTypeEnum

public enum AttributeUpdateResponseAttributeTypeEnum: String, Codable, Sendable {
    case numeric = "NUMERIC"
    case string = "STRING"
}

public extension AttributeUpdateResponseAttributeTypeEnum {
    static var allValues: [AttributeUpdateResponseAttributeTypeEnum] { [.numeric, .string] }
    static var allStringValues: [String] { ["NUMERIC", "STRING"] }
    static func fromString(_ value: String) -> AttributeUpdateResponseAttributeTypeEnum? { AttributeUpdateResponseAttributeTypeEnum(rawValue: value) }
}