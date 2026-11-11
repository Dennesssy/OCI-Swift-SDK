import Foundation

// MARK: - IotDomainGroupTypeEnum

public enum IotDomainGroupTypeEnum: String, Codable, Sendable {
    case production = "PRODUCTION"
    case development = "DEVELOPMENT"
    case standard = "STANDARD"
    case lightweight = "LIGHTWEIGHT"
}

public extension IotDomainGroupTypeEnum {
    static var allValues: [IotDomainGroupTypeEnum] { [.production, .development, .standard, .lightweight] }
    static var allStringValues: [String] { ["PRODUCTION", "DEVELOPMENT", "STANDARD", "LIGHTWEIGHT"] }
    static func fromString(_ value: String) -> IotDomainGroupTypeEnum? { IotDomainGroupTypeEnum(rawValue: value) }
}