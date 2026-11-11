import Foundation

// MARK: - WorkRequestLogAndErrorSortByEnum

public enum WorkRequestLogAndErrorSortByEnum: String, Codable, Sendable {
    case timeCreated = "timeCreated"
}

public extension WorkRequestLogAndErrorSortByEnum {
    static var allValues: [WorkRequestLogAndErrorSortByEnum] { [.timeCreated] }
    static var allStringValues: [String] { ["timeCreated"] }
    static func fromString(_ value: String) -> WorkRequestLogAndErrorSortByEnum? { WorkRequestLogAndErrorSortByEnum(rawValue: value) }
}