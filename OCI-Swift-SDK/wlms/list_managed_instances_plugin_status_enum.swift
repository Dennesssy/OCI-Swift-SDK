import Foundation

// MARK: - ListManagedInstancesPluginStatusEnum

public enum ListManagedInstancesPluginStatusEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case inactive = "INACTIVE"
}

public extension ListManagedInstancesPluginStatusEnum {
    static var allValues: [ListManagedInstancesPluginStatusEnum] { [.active, .inactive] }
    static var allStringValues: [String] { ["ACTIVE", "INACTIVE"] }
    static func fromString(_ value: String) -> ListManagedInstancesPluginStatusEnum? { ListManagedInstancesPluginStatusEnum(rawValue: value) }
}