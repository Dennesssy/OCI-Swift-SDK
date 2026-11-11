import Foundation

// MARK: - ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsSortByEnum

public enum ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsSortByEnum {
    static var allValues: [ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsSortByEnum? { ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsSortByEnum(rawValue: value) }
}