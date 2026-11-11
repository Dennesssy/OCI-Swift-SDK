import Foundation

// MARK: - ListLimitsIncreaseQuestionsSortByEnum

public enum ListLimitsIncreaseQuestionsSortByEnum: String, Codable, Sendable {
    case servicename = "serviceName"
    case limitname = "limitName"
}

public extension ListLimitsIncreaseQuestionsSortByEnum {
    static var allValues: [ListLimitsIncreaseQuestionsSortByEnum] { [.servicename, .limitname] }
    static var allStringValues: [String] { ["serviceName", "limitName"] }
    static func fromString(_ value: String) -> ListLimitsIncreaseQuestionsSortByEnum? { ListLimitsIncreaseQuestionsSortByEnum(rawValue: value) }
}