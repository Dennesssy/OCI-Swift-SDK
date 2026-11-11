import Foundation

// MARK: - ListPsaWorkRequestErrorsSortByEnum

public enum ListPsaWorkRequestErrorsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
}

public extension ListPsaWorkRequestErrorsSortByEnum {
    static var allValues: [ListPsaWorkRequestErrorsSortByEnum] { [.timecreated] }
    static var allStringValues: [String] { ["timeCreated"] }
    static func fromString(_ value: String) -> ListPsaWorkRequestErrorsSortByEnum? { ListPsaWorkRequestErrorsSortByEnum(rawValue: value) }
}