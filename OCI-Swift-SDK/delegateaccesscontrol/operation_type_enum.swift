import Foundation

// MARK: - OperationTypeEnum

public enum OperationTypeEnum: String, Codable, Sendable {
    case createDelegationControl = "CREATE_DELEGATION_CONTROL"
    case updateDelegationControl = "UPDATE_DELEGATION_CONTROL"
    case deleteDelegationControl = "DELETE_DELEGATION_CONTROL"
    case moveDelegationControl = "MOVE_DELEGATION_CONTROL"
    case createDelegatedResourceAccessRequest = "CREATE_DELEGATED_RESOURCE_ACCESS_REQUEST"
    case approveDelegatedResourceAccessRequest = "APPROVE_DELEGATED_RESOURCE_ACCESS_REQUEST"
    case rejectDelegatedResourceAccessRequest = "REJECT_DELEGATED_RESOURCE_ACCESS_REQUEST"
    case revokeDelegatedResourceAccessRequest = "REVOKE_DELEGATED_RESOURCE_ACCESS_REQUEST"
    case createDelegationSubscription = "CREATE_DELEGATION_SUBSCRIPTION"
    case updateDelegationSubscription = "UPDATE_DELEGATION_SUBSCRIPTION"
    case deleteDelegationSubscription = "DELETE_DELEGATION_SUBSCRIPTION"
    case moveDelegationSubscription = "MOVE_DELEGATION_SUBSCRIPTION"
}

public extension OperationTypeEnum {
    static var allValues: [OperationTypeEnum] { [.createDelegationControl, .updateDelegationControl, .deleteDelegationControl, .moveDelegationControl, .createDelegatedResourceAccessRequest, .approveDelegatedResourceAccessRequest, .rejectDelegatedResourceAccessRequest, .revokeDelegatedResourceAccessRequest, .createDelegationSubscription, .updateDelegationSubscription, .deleteDelegationSubscription, .moveDelegationSubscription] }
    static var allStringValues: [String] { ["CREATE_DELEGATION_CONTROL", "UPDATE_DELEGATION_CONTROL", "DELETE_DELEGATION_CONTROL", "MOVE_DELEGATION_CONTROL", "CREATE_DELEGATED_RESOURCE_ACCESS_REQUEST", "APPROVE_DELEGATED_RESOURCE_ACCESS_REQUEST", "REJECT_DELEGATED_RESOURCE_ACCESS_REQUEST", "REVOKE_DELEGATED_RESOURCE_ACCESS_REQUEST", "CREATE_DELEGATION_SUBSCRIPTION", "UPDATE_DELEGATION_SUBSCRIPTION", "DELETE_DELEGATION_SUBSCRIPTION", "MOVE_DELEGATION_SUBSCRIPTION"] }
    static func fromString(_ value: String) -> OperationTypeEnum? { OperationTypeEnum(rawValue: value) }
}