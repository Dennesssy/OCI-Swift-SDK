import Foundation

// MARK: - AttributeUpdateResponseOperationTypeEnum

public enum AttributeUpdateResponseOperationTypeEnum: String, Codable, Sendable {
    case updateAttributeProperties = "UPDATE_ATTRIBUTE_PROPERTIES"
}

public extension AttributeUpdateResponseOperationTypeEnum {
    static var allValues: [AttributeUpdateResponseOperationTypeEnum] { [.updateAttributeProperties] }
    static var allStringValues: [String] { ["UPDATE_ATTRIBUTE_PROPERTIES"] }
    static func fromString(_ value: String) -> AttributeUpdateResponseOperationTypeEnum? { AttributeUpdateResponseOperationTypeEnum(rawValue: value) }
}