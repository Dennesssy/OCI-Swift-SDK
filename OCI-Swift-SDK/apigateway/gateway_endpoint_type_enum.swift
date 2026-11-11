import Foundation

// MARK: - GatewayEndpointTypeEnum

public enum GatewayEndpointTypeEnum: String, Codable, Sendable {
    case `public` = "PUBLIC"
    case `private` = "PRIVATE"
}

public extension GatewayEndpointTypeEnum {
    static var allValues: [GatewayEndpointTypeEnum] { [.`public`, .`private`] }
    static var allStringValues: [String] { ["PUBLIC", "PRIVATE"] }
    static func fromString(_ value: String) -> GatewayEndpointTypeEnum? { GatewayEndpointTypeEnum(rawValue: value) }
}