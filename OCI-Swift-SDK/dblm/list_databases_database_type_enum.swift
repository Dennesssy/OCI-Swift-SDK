import Foundation

// MARK: - ListDatabasesDatabaseTypeEnum

public enum ListDatabasesDatabaseTypeEnum: String, Codable, Sendable {
    case si = "SI"
    case rac = "RAC"
}

public extension ListDatabasesDatabaseTypeEnum {
    static var allValues: [ListDatabasesDatabaseTypeEnum] { [.si, .rac] }
    static var allStringValues: [String] { ["SI", "RAC"] }
    static func fromString(_ value: String) -> ListDatabasesDatabaseTypeEnum? { ListDatabasesDatabaseTypeEnum(rawValue: value) }
}