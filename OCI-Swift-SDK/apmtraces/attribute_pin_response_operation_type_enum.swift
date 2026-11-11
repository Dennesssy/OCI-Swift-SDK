import Foundation

// MARK: - AttributePinResponseOperationTypeEnum

public enum AttributePinResponseOperationTypeEnum: String, Codable, Sendable {
    case pin = "PIN"
}

public extension AttributePinResponseOperationTypeEnum {
    static var allValues: [AttributePinResponseOperationTypeEnum] { [.pin] }
    static var allStringValues: [String] { ["PIN"] }
    static func fromString(_ value: String) -> AttributePinResponseOperationTypeEnum? { AttributePinResponseOperationTypeEnum(rawValue: value) }
}