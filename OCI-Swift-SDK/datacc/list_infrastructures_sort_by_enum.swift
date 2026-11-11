import Foundation

// MARK: - ListInfrastructuresSortByEnum

public enum ListInfrastructuresSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
    case buildidentifier = "buildIdentifier"
}

public extension ListInfrastructuresSortByEnum {
    static var allValues: [ListInfrastructuresSortByEnum] { [.timecreated, .displayname, .buildidentifier] }
    static var allStringValues: [String] { ["timeCreated", "displayName", "buildIdentifier"] }
    static func fromString(_ value: String) -> ListInfrastructuresSortByEnum? { ListInfrastructuresSortByEnum(rawValue: value) }
}