import Foundation

// MARK: - ApproveDelegatedResourceAccessRequestDetails

public struct ApproveDelegatedResourceAccessRequestDetails: Codable, Sendable {

    public var approverComment: String?
    public var additionalMessage: String?
    public var timeApprovedForAccess: Date?

    private enum CodingKeys: String, CodingKey {
        case approverComment, additionalMessage, timeApprovedForAccess
    }

    public init(
                approverComment: String? = nil,
                additionalMessage: String? = nil,
                timeApprovedForAccess: Date? = nil
    ) {
        self.approverComment = approverComment
        self.additionalMessage = additionalMessage
        self.timeApprovedForAccess = timeApprovedForAccess
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApproveDelegatedResourceAccessRequestDetails: CustomStringConvertible {
    public var description: String { "ApproveDelegatedResourceAccessRequestDetails()" }
}