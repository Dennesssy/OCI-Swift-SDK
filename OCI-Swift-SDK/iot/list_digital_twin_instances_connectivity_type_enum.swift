import Foundation

// MARK: - ListDigitalTwinInstancesConnectivityTypeEnum

public enum ListDigitalTwinInstancesConnectivityTypeEnum: String, Codable, Sendable {
    case direct = "DIRECT"
    case indirect = "INDIRECT"
    case gateway = "GATEWAY"
    case none = "NONE"
}

public extension ListDigitalTwinInstancesConnectivityTypeEnum {
    static var allValues: [ListDigitalTwinInstancesConnectivityTypeEnum] { [.direct, .indirect, .gateway, .none] }
    static var allStringValues: [String] { ["DIRECT", "INDIRECT", "GATEWAY", "NONE"] }
    static func fromString(_ value: String) -> ListDigitalTwinInstancesConnectivityTypeEnum? { ListDigitalTwinInstancesConnectivityTypeEnum(rawValue: value) }
}