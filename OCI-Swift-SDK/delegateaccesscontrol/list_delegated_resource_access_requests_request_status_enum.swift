import Foundation

// MARK: - ListDelegatedResourceAccessRequestsRequestStatusEnum

public enum ListDelegatedResourceAccessRequestsRequestStatusEnum: String, Codable, Sendable {
    case created = "CREATED"
    case approvalWaiting = "APPROVAL_WAITING"
    case operatorAssignmentWaiting = "OPERATOR_ASSIGNMENT_WAITING"
    case preapproved = "PREAPPROVED"
    case approved = "APPROVED"
    case approvedForFuture = "APPROVED_FOR_FUTURE"
    case rejected = "REJECTED"
    case deployed = "DEPLOYED"
    case deployFailed = "DEPLOY_FAILED"
    case undeployed = "UNDEPLOYED"
    case undeployFailed = "UNDEPLOY_FAILED"
    case closeFailed = "CLOSE_FAILED"
    case revokeFailed = "REVOKE_FAILED"
    case expiryFailed = "EXPIRY_FAILED"
    case revoking = "REVOKING"
    case revoked = "REVOKED"
    case extending = "EXTENDING"
    case extended = "EXTENDED"
    case extensionRejected = "EXTENSION_REJECTED"
    case extensionFailed = "EXTENSION_FAILED"
    case completing = "COMPLETING"
    case completed = "COMPLETED"
    case expired = "EXPIRED"
}

public extension ListDelegatedResourceAccessRequestsRequestStatusEnum {
    static var allValues: [ListDelegatedResourceAccessRequestsRequestStatusEnum] { [.created, .approvalWaiting, .operatorAssignmentWaiting, .preapproved, .approved, .approvedForFuture, .rejected, .deployed, .deployFailed, .undeployed, .undeployFailed, .closeFailed, .revokeFailed, .expiryFailed, .revoking, .revoked, .extending, .extended, .extensionRejected, .extensionFailed, .completing, .completed, .expired] }
    static var allStringValues: [String] { ["CREATED", "APPROVAL_WAITING", "OPERATOR_ASSIGNMENT_WAITING", "PREAPPROVED", "APPROVED", "APPROVED_FOR_FUTURE", "REJECTED", "DEPLOYED", "DEPLOY_FAILED", "UNDEPLOYED", "UNDEPLOY_FAILED", "CLOSE_FAILED", "REVOKE_FAILED", "EXPIRY_FAILED", "REVOKING", "REVOKED", "EXTENDING", "EXTENDED", "EXTENSION_REJECTED", "EXTENSION_FAILED", "COMPLETING", "COMPLETED", "EXPIRED"] }
    static func fromString(_ value: String) -> ListDelegatedResourceAccessRequestsRequestStatusEnum? { ListDelegatedResourceAccessRequestsRequestStatusEnum(rawValue: value) }
}