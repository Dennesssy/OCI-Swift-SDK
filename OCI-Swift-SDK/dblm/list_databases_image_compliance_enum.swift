import Foundation

// MARK: - ListDatabasesImageComplianceEnum

public enum ListDatabasesImageComplianceEnum: String, Codable, Sendable {
    case notSubscribed = "NOT_SUBSCRIBED"
    case notCompliantWithImages = "NOT_COMPLIANT_WITH_IMAGES"
    case allDatabases = "ALL_DATABASES"
}

public extension ListDatabasesImageComplianceEnum {
    static var allValues: [ListDatabasesImageComplianceEnum] { [.notSubscribed, .notCompliantWithImages, .allDatabases] }
    static var allStringValues: [String] { ["NOT_SUBSCRIBED", "NOT_COMPLIANT_WITH_IMAGES", "ALL_DATABASES"] }
    static func fromString(_ value: String) -> ListDatabasesImageComplianceEnum? { ListDatabasesImageComplianceEnum(rawValue: value) }
}