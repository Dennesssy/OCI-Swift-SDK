import Foundation

// MARK: - BulkActivateAttributeDetailAttributeTypeEnum

public enum BulkActivateAttributeDetailAttributeTypeEnum: String, Codable, Sendable {
    case numeric = "NUMERIC"
    case string = "STRING"
    case none = "NONE"
}

public extension BulkActivateAttributeDetailAttributeTypeEnum {
    static var allValues: [BulkActivateAttributeDetailAttributeTypeEnum] { [.numeric, .string, .none] }
    static var allStringValues: [String] { ["NUMERIC", "STRING", "NONE"] }
    static func fromString(_ value: String) -> BulkActivateAttributeDetailAttributeTypeEnum? { BulkActivateAttributeDetailAttributeTypeEnum(rawValue: value) }
}