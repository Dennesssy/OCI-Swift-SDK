import Foundation

// MARK: - ListAgreementRecordsSortByEnum

public enum ListAgreementRecordsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListAgreementRecordsSortByEnum {
    static var allValues: [ListAgreementRecordsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListAgreementRecordsSortByEnum? { ListAgreementRecordsSortByEnum(rawValue: value) }
}