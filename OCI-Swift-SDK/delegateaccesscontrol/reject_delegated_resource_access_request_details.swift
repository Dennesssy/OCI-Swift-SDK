import Foundation

// MARK: - RejectDelegatedResourceAccessRequestDetails

public struct RejectDelegatedResourceAccessRequestDetails: Codable, Sendable {

    public var approverComment: String?

    private enum CodingKeys: String, CodingKey {
        case approverComment
    }

    public init(
                approverComment: String? = nil
    ) {
        self.approverComment = approverComment
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RejectDelegatedResourceAccessRequestDetails: CustomStringConvertible {
    public var description: String { "RejectDelegatedResourceAccessRequestDetails()" }
}