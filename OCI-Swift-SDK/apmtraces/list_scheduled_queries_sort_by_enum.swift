import Foundation

// MARK: - ListScheduledQueriesSortByEnum

public enum ListScheduledQueriesSortByEnum: String, Codable, Sendable {
    case name = "SCHEDULED_QUERY_NAME"
    case type = "SCHEDULED_QUERY_TYPE"
    case subType = "SCHEDULED_QUERY_SUB_TYPE"
    case nextRun = "SCHEDULED_QUERY_NEXT_RUN"
    case schedule = "SCHEDULED_QUERY_SCHEDULE"
}

public extension ListScheduledQueriesSortByEnum {
    static var allValues: [ListScheduledQueriesSortByEnum] { [.name, .type, .subType, .nextRun, .schedule] }
    static var allStringValues: [String] { ["SCHEDULED_QUERY_NAME", "SCHEDULED_QUERY_TYPE", "SCHEDULED_QUERY_SUB_TYPE", "SCHEDULED_QUERY_NEXT_RUN", "SCHEDULED_QUERY_SCHEDULE"] }
    static func fromString(_ value: String) -> ListScheduledQueriesSortByEnum? { ListScheduledQueriesSortByEnum(rawValue: value) }
}