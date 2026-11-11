import Foundation

// MARK: - IotDomainGroupSummaryTypeEnum

public enum IotDomainGroupSummaryTypeEnum: String, Codable, Sendable {
    case production = "PRODUCTION"
    case development = "DEVELOPMENT"
    case standard = "STANDARD"
    case lightweight = "LIGHTWEIGHT"
}

public extension IotDomainGroupSummaryTypeEnum {
    static var allValues: [IotDomainGroupSummaryTypeEnum] { [.production, .development, .standard, .lightweight] }
    static var allStringValues: [String] { ["PRODUCTION", "DEVELOPMENT", "STANDARD", "LIGHTWEIGHT"] }
    static func fromString(_ value: String) -> IotDomainGroupSummaryTypeEnum? { IotDomainGroupSummaryTypeEnum(rawValue: value) }
}