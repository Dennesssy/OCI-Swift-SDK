import Foundation

// MARK: - AttributeResponseOperationTypeEnum

public enum AttributeResponseOperationTypeEnum: String, Codable, Sendable {
    case activate = "ACTIVATE"
    case deactivate = "DEACTIVATE"
}

public extension AttributeResponseOperationTypeEnum {
    static var allValues: [AttributeResponseOperationTypeEnum] { [.activate, .deactivate] }
    static var allStringValues: [String] { ["ACTIVATE", "DEACTIVATE"] }
    static func fromString(_ value: String) -> AttributeResponseOperationTypeEnum? { AttributeResponseOperationTypeEnum(rawValue: value) }
}