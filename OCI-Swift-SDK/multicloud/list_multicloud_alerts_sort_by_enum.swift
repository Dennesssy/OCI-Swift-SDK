import Foundation

// MARK: - ListMulticloudAlertsSortByEnum

public enum ListMulticloudAlertsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListMulticloudAlertsSortByEnum {
    static var allValues: [ListMulticloudAlertsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListMulticloudAlertsSortByEnum? { ListMulticloudAlertsSortByEnum(rawValue: value) }
}