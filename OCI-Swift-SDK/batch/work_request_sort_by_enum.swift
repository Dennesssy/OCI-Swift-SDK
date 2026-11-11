import Foundation

// MARK: - WorkRequestSortByEnum

public enum WorkRequestSortByEnum: String, Codable, Sendable {
    case timeAccepted = "timeAccepted"
}

public extension WorkRequestSortByEnum {
    static var allValues: [WorkRequestSortByEnum] { [.timeAccepted] }
    static var allStringValues: [String] { ["timeAccepted"] }
    static func fromString(_ value: String) -> WorkRequestSortByEnum? { WorkRequestSortByEnum(rawValue: value) }
}