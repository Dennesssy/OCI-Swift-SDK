import Foundation

// MARK: - ApprovePrivilegedApiRequestDetails

public struct ApprovePrivilegedApiRequestDetails: Codable, Sendable {

    public var approverComment: String?
    public var timeOfUserCreation: Date?

    private enum CodingKeys: String, CodingKey {
        case approverComment, timeOfUserCreation
    }

    public init(
                approverComment: String? = nil,
                timeOfUserCreation: Date? = nil
    ) {
        self.approverComment = approverComment
        self.timeOfUserCreation = timeOfUserCreation
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApprovePrivilegedApiRequestDetails: CustomStringConvertible {
    public var description: String { "ApprovePrivilegedApiRequestDetails()" }
}