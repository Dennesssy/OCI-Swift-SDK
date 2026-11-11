import Foundation

// MARK: - RevokeDelegatedResourceAccessRequestDetails

public struct RevokeDelegatedResourceAccessRequestDetails: Codable, Sendable {

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

extension RevokeDelegatedResourceAccessRequestDetails: CustomStringConvertible {
    public var description: String { "RevokeDelegatedResourceAccessRequestDetails()" }
}