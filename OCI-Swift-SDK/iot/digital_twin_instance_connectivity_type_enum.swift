import Foundation

// MARK: - DigitalTwinInstanceConnectivityTypeEnum

public enum DigitalTwinInstanceConnectivityTypeEnum: String, Codable, Sendable {
    case direct = "DIRECT"
    case indirect = "INDIRECT"
    case gateway = "GATEWAY"
    case none = "NONE"
}

public extension DigitalTwinInstanceConnectivityTypeEnum {
    static var allValues: [DigitalTwinInstanceConnectivityTypeEnum] { [.direct, .indirect, .gateway, .none] }
    static var allStringValues: [String] { ["DIRECT", "INDIRECT", "GATEWAY", "NONE"] }
    static func fromString(_ value: String) -> DigitalTwinInstanceConnectivityTypeEnum? { DigitalTwinInstanceConnectivityTypeEnum(rawValue: value) }
}