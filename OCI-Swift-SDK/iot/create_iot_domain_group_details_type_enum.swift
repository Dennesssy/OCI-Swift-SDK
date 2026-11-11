import Foundation

// MARK: - CreateIotDomainGroupDetailsTypeEnum

public enum CreateIotDomainGroupDetailsTypeEnum: String, Codable, Sendable {
    case production = "PRODUCTION"
    case development = "DEVELOPMENT"
    case standard = "STANDARD"
    case lightweight = "LIGHTWEIGHT"
}

public extension CreateIotDomainGroupDetailsTypeEnum {
    static var allValues: [CreateIotDomainGroupDetailsTypeEnum] { [.production, .development, .standard, .lightweight] }
    static var allStringValues: [String] { ["PRODUCTION", "DEVELOPMENT", "STANDARD", "LIGHTWEIGHT"] }
    static func fromString(_ value: String) -> CreateIotDomainGroupDetailsTypeEnum? { CreateIotDomainGroupDetailsTypeEnum(rawValue: value) }
}