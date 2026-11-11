import Foundation

// MARK: - ListCompartmentsAccessLevelEnum

public enum ListCompartmentsAccessLevelEnum: String, Codable, Sendable {
    case `any` = "ANY"
    case accessible = "ACCESSIBLE"
}

public extension ListCompartmentsAccessLevelEnum {
    static var allValues: [ListCompartmentsAccessLevelEnum] { [.`any`, .accessible] }
    static var allStringValues: [String] { ["ANY", "ACCESSIBLE"] }
    static func fromString(_ value: String) -> ListCompartmentsAccessLevelEnum? { ListCompartmentsAccessLevelEnum(rawValue: value) }
}