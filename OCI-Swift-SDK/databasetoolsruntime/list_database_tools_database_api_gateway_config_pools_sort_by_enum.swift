import Foundation

// MARK: - ListDatabaseToolsDatabaseApiGatewayConfigPoolsSortByEnum

public enum ListDatabaseToolsDatabaseApiGatewayConfigPoolsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListDatabaseToolsDatabaseApiGatewayConfigPoolsSortByEnum {
    static var allValues: [ListDatabaseToolsDatabaseApiGatewayConfigPoolsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListDatabaseToolsDatabaseApiGatewayConfigPoolsSortByEnum? { ListDatabaseToolsDatabaseApiGatewayConfigPoolsSortByEnum(rawValue: value) }
}