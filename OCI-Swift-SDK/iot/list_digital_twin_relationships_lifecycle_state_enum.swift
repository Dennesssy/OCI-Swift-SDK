import Foundation

// MARK: - ListDigitalTwinRelationshipsLifecycleStateEnum

public enum ListDigitalTwinRelationshipsLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case deleted = "DELETED"
}

public extension ListDigitalTwinRelationshipsLifecycleStateEnum {
    static var allValues: [ListDigitalTwinRelationshipsLifecycleStateEnum] { [.active, .deleted] }
    static var allStringValues: [String] { ["ACTIVE", "DELETED"] }
    static func fromString(_ value: String) -> ListDigitalTwinRelationshipsLifecycleStateEnum? { ListDigitalTwinRelationshipsLifecycleStateEnum(rawValue: value) }
}