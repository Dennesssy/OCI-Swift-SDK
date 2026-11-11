import Foundation

// MARK: - OperationTypeEnum

public enum OperationTypeEnum: String, Codable, Sendable {
    case createPrivateServiceAccess = "CREATE_PRIVATE_SERVICE_ACCESS"
    case updatePrivateServiceAccess = "UPDATE_PRIVATE_SERVICE_ACCESS"
    case deletePrivateServiceAccess = "DELETE_PRIVATE_SERVICE_ACCESS"
    case movePrivateServiceAccess = "MOVE_PRIVATE_SERVICE_ACCESS"
}

public extension OperationTypeEnum {
    static var allValues: [OperationTypeEnum] { [.createPrivateServiceAccess, .updatePrivateServiceAccess, .deletePrivateServiceAccess, .movePrivateServiceAccess] }
    static var allStringValues: [String] { ["CREATE_PRIVATE_SERVICE_ACCESS", "UPDATE_PRIVATE_SERVICE_ACCESS", "DELETE_PRIVATE_SERVICE_ACCESS", "MOVE_PRIVATE_SERVICE_ACCESS"] }
    static func fromString(_ value: String) -> OperationTypeEnum? { OperationTypeEnum(rawValue: value) }
}