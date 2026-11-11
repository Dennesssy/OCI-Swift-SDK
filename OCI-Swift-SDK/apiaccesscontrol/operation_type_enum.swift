import Foundation

// MARK: - OperationTypeEnum

public enum OperationTypeEnum: String, Codable, Sendable {
    case createPrivilegedApiControl = "CREATE_PRIVILEGED_API_CONTROL"
    case getPrivilegedApiControl = "GET_PRIVILEGED_API_CONTROL"
    case listPrivilegedApiControl = "LIST_PRIVILEGED_API_CONTROL"
    case updatePrivilegedApiControl = "UPDATE_PRIVILEGED_API_CONTROL"
    case deletePrivilegedApiControl = "DELETE_PRIVILEGED_API_CONTROL"
    case movePrivilegedApiControl = "MOVE_PRIVILEGED_API_CONTROL"
    case createPrivilegedApiRequest = "CREATE_PRIVILEGED_API_REQUEST"
    case getPrivilegedApiRequest = "GET_PRIVILEGED_API_REQUEST"
    case listPrivilegedApiRequest = "LIST_PRIVILEGED_API_REQUEST"
    case approvePrivilegedApiRequest = "APPROVE_PRIVILEGED_API_REQUEST"
    case rejectPrivilegedApiRequest = "REJECT_PRIVILEGED_API_REQUEST"
    case revokePrivilegedApiRequest = "REVOKE_PRIVILEGED_API_REQUEST"
    case closePrivilegedApiRequest = "CLOSE_PRIVILEGED_API_REQUEST"
    case timeoutPrivilegedApiRequest = "TIMEOUT_PRIVILEGED_API_REQUEST"
    case customerApprovalCheckPrivilegedApiRequest = "CUSTOMER_APPROVAL_CHECK_PRIVILEGED_API_REQUEST"
    case checkPrivilegedApiRequestStatus = "CHECK_PRIVILEGED_API_REQUEST_STATUS"
    case getPrivilegedApiWorkRequest = "GET_PRIVILEGED_API_WORK_REQUEST"
    case listPrivilegedApiWorkRequest = "LIST_PRIVILEGED_API_WORK_REQUEST"
    case listPrivilegedApiWorkRequestErrors = "LIST_PRIVILEGED_API_WORK_REQUEST_ERRORS"
    case listPrivilegedApiWorkRequestLogs = "LIST_PRIVILEGED_API_WORK_REQUEST_LOGS"
    case cancelPrivilegedApiWorkRequest = "CANCEL_PRIVILEGED_API_WORK_REQUEST"
    case listApiMetadata = "LIST_API_METADATA"
    case listApiMetadataByEntityType = "LIST_API_METADATA_BY_ENTITY_TYPE"
}

public extension OperationTypeEnum {
    static var allValues: [OperationTypeEnum] { [.createPrivilegedApiControl, .getPrivilegedApiControl, .listPrivilegedApiControl, .updatePrivilegedApiControl, .deletePrivilegedApiControl, .movePrivilegedApiControl, .createPrivilegedApiRequest, .getPrivilegedApiRequest, .listPrivilegedApiRequest, .approvePrivilegedApiRequest, .rejectPrivilegedApiRequest, .revokePrivilegedApiRequest, .closePrivilegedApiRequest, .timeoutPrivilegedApiRequest, .customerApprovalCheckPrivilegedApiRequest, .checkPrivilegedApiRequestStatus, .getPrivilegedApiWorkRequest, .listPrivilegedApiWorkRequest, .listPrivilegedApiWorkRequestErrors, .listPrivilegedApiWorkRequestLogs, .cancelPrivilegedApiWorkRequest, .listApiMetadata, .listApiMetadataByEntityType] }
    static var allStringValues: [String] { ["CREATE_PRIVILEGED_API_CONTROL", "GET_PRIVILEGED_API_CONTROL", "LIST_PRIVILEGED_API_CONTROL", "UPDATE_PRIVILEGED_API_CONTROL", "DELETE_PRIVILEGED_API_CONTROL", "MOVE_PRIVILEGED_API_CONTROL", "CREATE_PRIVILEGED_API_REQUEST", "GET_PRIVILEGED_API_REQUEST", "LIST_PRIVILEGED_API_REQUEST", "APPROVE_PRIVILEGED_API_REQUEST", "REJECT_PRIVILEGED_API_REQUEST", "REVOKE_PRIVILEGED_API_REQUEST", "CLOSE_PRIVILEGED_API_REQUEST", "TIMEOUT_PRIVILEGED_API_REQUEST", "CUSTOMER_APPROVAL_CHECK_PRIVILEGED_API_REQUEST", "CHECK_PRIVILEGED_API_REQUEST_STATUS", "GET_PRIVILEGED_API_WORK_REQUEST", "LIST_PRIVILEGED_API_WORK_REQUEST", "LIST_PRIVILEGED_API_WORK_REQUEST_ERRORS", "LIST_PRIVILEGED_API_WORK_REQUEST_LOGS", "CANCEL_PRIVILEGED_API_WORK_REQUEST", "LIST_API_METADATA", "LIST_API_METADATA_BY_ENTITY_TYPE"] }
    static func fromString(_ value: String) -> OperationTypeEnum? { OperationTypeEnum(rawValue: value) }
}