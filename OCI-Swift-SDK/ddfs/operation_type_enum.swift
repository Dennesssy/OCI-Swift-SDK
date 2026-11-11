import Foundation

// MARK: - OperationTypeEnum

public enum OperationTypeEnum: String, Codable, Sendable {
    case createInstance = "CREATE_INSTANCE"
    case updateInstance = "UPDATE_INSTANCE"
    case deleteInstance = "DELETE_INSTANCE"
    case moveInstance = "MOVE_INSTANCE"
}

public extension OperationTypeEnum {
    static var allValues: [OperationTypeEnum] { [.createInstance, .updateInstance, .deleteInstance, .moveInstance] }
    static var allStringValues: [String] { ["CREATE_INSTANCE", "UPDATE_INSTANCE", "DELETE_INSTANCE", "MOVE_INSTANCE"] }
    static func fromString(_ value: String) -> OperationTypeEnum? { OperationTypeEnum(rawValue: value) }
}