import Foundation

// MARK: - ReplicationActionsEnum

public enum ReplicationActionsEnum: String, Codable, Sendable {
    case create = "CREATE"
    case delete = "DELETE"
}

public extension ReplicationActionsEnum {
    static var allValues: [ReplicationActionsEnum] { [.create, .delete] }
    static var allStringValues: [String] { ["CREATE", "DELETE"] }
    static func fromString(_ value: String) -> ReplicationActionsEnum? { ReplicationActionsEnum(rawValue: value) }
}