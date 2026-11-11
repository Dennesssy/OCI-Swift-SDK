import Foundation

// MARK: - ChangeIotDomainDataRetentionPeriodDetailsTypeEnum

public enum ChangeIotDomainDataRetentionPeriodDetailsTypeEnum: String, Codable, Sendable {
    case rawData = "RAW_DATA"
    case rejectedData = "REJECTED_DATA"
    case historizedData = "HISTORIZED_DATA"
    case rawCommandData = "RAW_COMMAND_DATA"
}

public extension ChangeIotDomainDataRetentionPeriodDetailsTypeEnum {
    static var allValues: [ChangeIotDomainDataRetentionPeriodDetailsTypeEnum] { [.rawData, .rejectedData, .historizedData, .rawCommandData] }
    static var allStringValues: [String] { ["RAW_DATA", "REJECTED_DATA", "HISTORIZED_DATA", "RAW_COMMAND_DATA"] }
    static func fromString(_ value: String) -> ChangeIotDomainDataRetentionPeriodDetailsTypeEnum? { ChangeIotDomainDataRetentionPeriodDetailsTypeEnum(rawValue: value) }
}