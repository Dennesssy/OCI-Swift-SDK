import Foundation

// MARK: - ListCertificatesSortByEnum

public enum ListCertificatesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListCertificatesSortByEnum {
    static var allValues: [ListCertificatesSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListCertificatesSortByEnum? { ListCertificatesSortByEnum(rawValue: value) }
}