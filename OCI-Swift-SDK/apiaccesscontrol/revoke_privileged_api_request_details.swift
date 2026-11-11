import Foundation

// MARK: - RevokePrivilegedApiRequestDetails

public struct RevokePrivilegedApiRequestDetails: Codable, Sendable {

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

extension RevokePrivilegedApiRequestDetails: CustomStringConvertible {
    public var description: String { "RevokePrivilegedApiRequestDetails()" }
}