import Foundation

// MARK: - ListPsaWorkRequestLogsSortByEnum

public enum ListPsaWorkRequestLogsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
}

public extension ListPsaWorkRequestLogsSortByEnum {
    static var allValues: [ListPsaWorkRequestLogsSortByEnum] { [.timecreated] }
    static var allStringValues: [String] { ["timeCreated"] }
    static func fromString(_ value: String) -> ListPsaWorkRequestLogsSortByEnum? { ListPsaWorkRequestLogsSortByEnum(rawValue: value) }
}