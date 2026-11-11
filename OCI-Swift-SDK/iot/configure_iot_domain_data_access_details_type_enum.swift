import Foundation

// MARK: - ConfigureIotDomainDataAccessDetailsTypeEnum

public enum ConfigureIotDomainDataAccessDetailsTypeEnum: String, Codable, Sendable {
    case direct = "DIRECT"
    case ords = "ORDS"
    case apex = "APEX"
}

public extension ConfigureIotDomainDataAccessDetailsTypeEnum {
    static var allValues: [ConfigureIotDomainDataAccessDetailsTypeEnum] { [.direct, .ords, .apex] }
    static var allStringValues: [String] { ["DIRECT", "ORDS", "APEX"] }
    static func fromString(_ value: String) -> ConfigureIotDomainDataAccessDetailsTypeEnum? { ConfigureIotDomainDataAccessDetailsTypeEnum(rawValue: value) }
}