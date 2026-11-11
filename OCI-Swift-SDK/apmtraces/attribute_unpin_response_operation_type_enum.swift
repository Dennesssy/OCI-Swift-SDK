import Foundation

// MARK: - AttributeUnpinResponseOperationTypeEnum

public enum AttributeUnpinResponseOperationTypeEnum: String, Codable, Sendable {
    case unpin = "UNPIN"
}

public extension AttributeUnpinResponseOperationTypeEnum {
    static var allValues: [AttributeUnpinResponseOperationTypeEnum] { [.unpin] }
    static var allStringValues: [String] { ["UNPIN"] }
    static func fromString(_ value: String) -> AttributeUnpinResponseOperationTypeEnum? { AttributeUnpinResponseOperationTypeEnum(rawValue: value) }
}