import Foundation

// MARK: - ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsSortByEnum

public enum ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsSortByEnum {
    static var allValues: [ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsSortByEnum? { ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsSortByEnum(rawValue: value) }
}