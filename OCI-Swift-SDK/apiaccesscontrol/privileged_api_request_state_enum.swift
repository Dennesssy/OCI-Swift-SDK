import Foundation

// MARK: - PrivilegedApiRequestStateEnum

public enum PrivilegedApiRequestStateEnum: String, Codable, Sendable {
    case created = "CREATED"
    case approvalWaiting = "APPROVAL_WAITING"
    case approved = "APPROVED"
    case approvedForFuture = "APPROVED_FOR_FUTURE"
    case rejected = "REJECTED"
    case deployed = "DEPLOYED"
    case deployFailed = "DEPLOY_FAILED"
    case closeFailed = "CLOSE_FAILED"
    case revokeFailed = "REVOKE_FAILED"
    case expiryFailed = "EXPIRY_FAILED"
    case revoking = "REVOKING"
    case revoked = "REVOKED"
    case closing = "CLOSING"
    case closed = "CLOSED"
    case expired = "EXPIRED"
}

public extension PrivilegedApiRequestStateEnum {
    static var allValues: [PrivilegedApiRequestStateEnum] { [.created, .approvalWaiting, .approved, .approvedForFuture, .rejected, .deployed, .deployFailed, .closeFailed, .revokeFailed, .expiryFailed, .revoking, .revoked, .closing, .closed, .expired] }
    static var allStringValues: [String] { ["CREATED", "APPROVAL_WAITING", "APPROVED", "APPROVED_FOR_FUTURE", "REJECTED", "DEPLOYED", "DEPLOY_FAILED", "CLOSE_FAILED", "REVOKE_FAILED", "EXPIRY_FAILED", "REVOKING", "REVOKED", "CLOSING", "CLOSED", "EXPIRED"] }
    static func fromString(_ value: String) -> PrivilegedApiRequestStateEnum? { PrivilegedApiRequestStateEnum(rawValue: value) }
}