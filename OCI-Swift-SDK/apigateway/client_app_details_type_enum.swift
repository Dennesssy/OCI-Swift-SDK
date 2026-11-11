import Foundation

// MARK: - ClientAppDetailsTypeEnum

public enum ClientAppDetailsTypeEnum: String, Codable, Sendable {
    case validationBlock = "VALIDATION_BLOCK"
    case custom = "CUSTOM"
}

public extension ClientAppDetailsTypeEnum {
    static var allValues: [ClientAppDetailsTypeEnum] { [.validationBlock, .custom] }
    static var allStringValues: [String] { ["VALIDATION_BLOCK", "CUSTOM"] }
    static func fromString(_ value: String) -> ClientAppDetailsTypeEnum? { ClientAppDetailsTypeEnum(rawValue: value) }
}