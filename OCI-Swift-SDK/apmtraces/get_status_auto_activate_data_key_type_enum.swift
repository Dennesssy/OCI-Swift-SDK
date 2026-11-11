import Foundation

// MARK: - GetStatusAutoActivateDataKeyTypeEnum

public enum GetStatusAutoActivateDataKeyTypeEnum: String, Codable, Sendable {
    case privateDataKey = "PRIVATE_DATA_KEY"
    case publicDataKey = "PUBLIC_DATA_KEY"
}

public extension GetStatusAutoActivateDataKeyTypeEnum {
    static var allValues: [GetStatusAutoActivateDataKeyTypeEnum] { [.privateDataKey, .publicDataKey] }
    static var allStringValues: [String] { ["PRIVATE_DATA_KEY", "PUBLIC_DATA_KEY"] }
    static func fromString(_ value: String) -> GetStatusAutoActivateDataKeyTypeEnum? { GetStatusAutoActivateDataKeyTypeEnum(rawValue: value) }
}