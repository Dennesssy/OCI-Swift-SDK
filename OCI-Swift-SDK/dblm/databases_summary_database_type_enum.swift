import Foundation

// MARK: - DatabasesSummaryDatabaseTypeEnum

public enum DatabasesSummaryDatabaseTypeEnum: String, Codable, Sendable {
    case si = "SI"
    case rac = "RAC"
}

public extension DatabasesSummaryDatabaseTypeEnum {
    static var allValues: [DatabasesSummaryDatabaseTypeEnum] { [.si, .rac] }
    static var allStringValues: [String] { ["SI", "RAC"] }
    static func fromString(_ value: String) -> DatabasesSummaryDatabaseTypeEnum? { DatabasesSummaryDatabaseTypeEnum(rawValue: value) }
}