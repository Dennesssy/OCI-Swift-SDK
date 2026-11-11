import Foundation

// MARK: - PutToggleAutoActivateDataKeyTypeEnum

public enum PutToggleAutoActivateDataKeyTypeEnum: String, Codable, Sendable {
    case privateDataKey = "PRIVATE_DATA_KEY"
    case publicDataKey = "PUBLIC_DATA_KEY"
}

public extension PutToggleAutoActivateDataKeyTypeEnum {
    static var allValues: [PutToggleAutoActivateDataKeyTypeEnum] { [.privateDataKey, .publicDataKey] }
    static var allStringValues: [String] { ["PRIVATE_DATA_KEY", "PUBLIC_DATA_KEY"] }
    static func fromString(_ value: String) -> PutToggleAutoActivateDataKeyTypeEnum? { PutToggleAutoActivateDataKeyTypeEnum(rawValue: value) }
}