import Foundation

// MARK: - ListPsaWorkRequestsSortByEnum

public enum ListPsaWorkRequestsSortByEnum: String, Codable, Sendable {
    case timeaccepted = "timeAccepted"
}

public extension ListPsaWorkRequestsSortByEnum {
    static var allValues: [ListPsaWorkRequestsSortByEnum] { [.timeaccepted] }
    static var allStringValues: [String] { ["timeAccepted"] }
    static func fromString(_ value: String) -> ListPsaWorkRequestsSortByEnum? { ListPsaWorkRequestsSortByEnum(rawValue: value) }
}