import Foundation

// MARK: - ListDigitalTwinInstancesLifecycleStateEnum

public enum ListDigitalTwinInstancesLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case deleted = "DELETED"
}

public extension ListDigitalTwinInstancesLifecycleStateEnum {
    static var allValues: [ListDigitalTwinInstancesLifecycleStateEnum] { [.active, .deleted] }
    static var allStringValues: [String] { ["ACTIVE", "DELETED"] }
    static func fromString(_ value: String) -> ListDigitalTwinInstancesLifecycleStateEnum? { ListDigitalTwinInstancesLifecycleStateEnum(rawValue: value) }
}