import Foundation

// MARK: - ListWlsDomainServerBackupsSortByEnum

public enum ListWlsDomainServerBackupsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
}

public extension ListWlsDomainServerBackupsSortByEnum {
    static var allValues: [ListWlsDomainServerBackupsSortByEnum] { [.timecreated] }
    static var allStringValues: [String] { ["timeCreated"] }
    static func fromString(_ value: String) -> ListWlsDomainServerBackupsSortByEnum? { ListWlsDomainServerBackupsSortByEnum(rawValue: value) }
}