import Foundation

// MARK: - CreateReviewerDetails

public struct CreateReviewerDetails: Codable, Sendable {

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

extension CreateReviewerDetails: CustomStringConvertible {
    public var description: String { "CreateReviewerDetails()" }
}