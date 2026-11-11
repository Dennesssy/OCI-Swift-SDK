import Foundation

// MARK: - PullRequestAuthorSummary

public struct PullRequestAuthorSummary: Codable, Sendable {

    public var principalDetails: PrincipalDetails?

    private enum CodingKeys: String, CodingKey {
        case principalDetails
    }

    public init(
                principalDetails: PrincipalDetails? = nil
    ) {
        self.principalDetails = principalDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PullRequestAuthorSummary: CustomStringConvertible {
    public var description: String { "PullRequestAuthorSummary()" }
}