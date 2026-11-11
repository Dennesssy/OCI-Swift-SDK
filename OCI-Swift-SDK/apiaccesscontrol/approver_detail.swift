import Foundation

// MARK: - ApproverDetail

public struct ApproverDetail: Codable, Sendable {

    public var approverId: String?
    public var approvalAction: String?
    public var approverGroupLevel: Int?
    public var approvalComment: String?
    public var timeOfAuthorization: Date?
    public var timeApprovedForAccess: Date?

    private enum CodingKeys: String, CodingKey {
        case approverId, approvalAction, approverGroupLevel, approvalComment, timeOfAuthorization, timeApprovedForAccess
    }

    public init(
                approverId: String? = nil,
                approvalAction: String? = nil,
                approverGroupLevel: Int? = nil,
                approvalComment: String? = nil,
                timeOfAuthorization: Date? = nil,
                timeApprovedForAccess: Date? = nil
    ) {
        self.approverId = approverId
        self.approvalAction = approvalAction
        self.approverGroupLevel = approverGroupLevel
        self.approvalComment = approvalComment
        self.timeOfAuthorization = timeOfAuthorization
        self.timeApprovedForAccess = timeApprovedForAccess
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApproverDetail: CustomStringConvertible {
    public var description: String { "ApproverDetail()" }
}