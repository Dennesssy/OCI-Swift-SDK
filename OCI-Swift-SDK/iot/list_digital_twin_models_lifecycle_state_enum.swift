import Foundation

// MARK: - ListDigitalTwinModelsLifecycleStateEnum

public enum ListDigitalTwinModelsLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case deleted = "DELETED"
}

public extension ListDigitalTwinModelsLifecycleStateEnum {
    static var allValues: [ListDigitalTwinModelsLifecycleStateEnum] { [.active, .deleted] }
    static var allStringValues: [String] { ["ACTIVE", "DELETED"] }
    static func fromString(_ value: String) -> ListDigitalTwinModelsLifecycleStateEnum? { ListDigitalTwinModelsLifecycleStateEnum(rawValue: value) }
}