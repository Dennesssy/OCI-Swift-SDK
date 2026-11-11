import Foundation

// MARK: - ListVmClusterNetworksSortByEnum

public enum ListVmClusterNetworksSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
    case buildidentifier = "buildIdentifier"
}

public extension ListVmClusterNetworksSortByEnum {
    static var allValues: [ListVmClusterNetworksSortByEnum] { [.timecreated, .displayname, .buildidentifier] }
    static var allStringValues: [String] { ["timeCreated", "displayName", "buildIdentifier"] }
    static func fromString(_ value: String) -> ListVmClusterNetworksSortByEnum? { ListVmClusterNetworksSortByEnum(rawValue: value) }
}