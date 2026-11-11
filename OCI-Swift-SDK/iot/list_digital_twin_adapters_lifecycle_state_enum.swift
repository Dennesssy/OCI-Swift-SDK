import Foundation

// MARK: - ListDigitalTwinAdaptersLifecycleStateEnum

public enum ListDigitalTwinAdaptersLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case deleted = "DELETED"
}

public extension ListDigitalTwinAdaptersLifecycleStateEnum {
    static var allValues: [ListDigitalTwinAdaptersLifecycleStateEnum] { [.active, .deleted] }
    static var allStringValues: [String] { ["ACTIVE", "DELETED"] }
    static func fromString(_ value: String) -> ListDigitalTwinAdaptersLifecycleStateEnum? { ListDigitalTwinAdaptersLifecycleStateEnum(rawValue: value) }
}