import Foundation

// MARK: - DelegatedResourceAccessRequestApprovalDetails

public struct DelegatedResourceAccessRequestApprovalDetails: Codable, Sendable {

    public var approverComment: String?
    public var approvalAction: DelegatedResourceAccessRequestApprovalDetailsApprovalActionEnum?
    public var timeApprovedForAccess: Date?
    public var approvalType: DelegatedResourceAccessRequestApprovalDetailsApprovalTypeEnum?
    public var approverId: String?
    public var approverAdditionalMessage: String?
    public var timeOfAction: Date?

    private enum CodingKeys: String, CodingKey {
        case approverComment, approvalAction, timeApprovedForAccess, approvalType, approverId, approverAdditionalMessage, timeOfAction
    }

    public init(
                approverComment: String? = nil,
                approvalAction: DelegatedResourceAccessRequestApprovalDetailsApprovalActionEnum? = nil,
                timeApprovedForAccess: Date? = nil,
                approvalType: DelegatedResourceAccessRequestApprovalDetailsApprovalTypeEnum? = nil,
                approverId: String? = nil,
                approverAdditionalMessage: String? = nil,
                timeOfAction: Date? = nil
    ) {
        self.approverComment = approverComment
        self.approvalAction = approvalAction
        self.timeApprovedForAccess = timeApprovedForAccess
        self.approvalType = approvalType
        self.approverId = approverId
        self.approverAdditionalMessage = approverAdditionalMessage
        self.timeOfAction = timeOfAction
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DelegatedResourceAccessRequestApprovalDetails: CustomStringConvertible {
    public var description: String { "DelegatedResourceAccessRequestApprovalDetails()" }
}