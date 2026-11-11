import Foundation

// MARK: - UpdateReviewerDetails

public struct UpdateReviewerDetails: Codable, Sendable {

    public var principalId: String?

    private enum CodingKeys: String, CodingKey {
        case principalId
    }

    public init(
                principalId: String? = nil
    ) {
        self.principalId = principalId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateReviewerDetails: CustomStringConvertible {
    public var description: String { "UpdateReviewerDetails()" }
}