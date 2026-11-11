import Foundation

// MARK: - ListDiagnosisStoresSortByEnum

public enum ListDiagnosisStoresSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListDiagnosisStoresSortByEnum {
    static var allValues: [ListDiagnosisStoresSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListDiagnosisStoresSortByEnum? { ListDiagnosisStoresSortByEnum(rawValue: value) }
}