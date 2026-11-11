import Foundation

// MARK: - OperationTypeEnum

public enum OperationTypeEnum: String, Codable, Sendable {
    case createApipInstance = "CREATE_APIP_INSTANCE"
    case updateApipInstance = "UPDATE_APIP_INSTANCE"
    case deleteApipInstance = "DELETE_APIP_INSTANCE"
    case moveApipInstance = "MOVE_APIP_INSTANCE"
}

public extension OperationTypeEnum {
    static var allValues: [OperationTypeEnum] { [.createApipInstance, .updateApipInstance, .deleteApipInstance, .moveApipInstance] }
    static var allStringValues: [String] { ["CREATE_APIP_INSTANCE", "UPDATE_APIP_INSTANCE", "DELETE_APIP_INSTANCE", "MOVE_APIP_INSTANCE"] }
    static func fromString(_ value: String) -> OperationTypeEnum? { OperationTypeEnum(rawValue: value) }
}