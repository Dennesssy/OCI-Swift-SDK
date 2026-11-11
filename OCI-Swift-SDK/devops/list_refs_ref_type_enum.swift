import Foundation

// MARK: - ListRefsRefTypeEnum

public enum ListRefsRefTypeEnum: String, Codable, Sendable {
    case branch = "BRANCH"
    case tag = "TAG"
}

public extension ListRefsRefTypeEnum {
    static var allValues: [ListRefsRefTypeEnum] { [.branch, .tag] }
    static var allStringValues: [String] { ["BRANCH", "TAG"] }
    static func fromString(_ value: String) -> ListRefsRefTypeEnum? { ListRefsRefTypeEnum(rawValue: value) }
}