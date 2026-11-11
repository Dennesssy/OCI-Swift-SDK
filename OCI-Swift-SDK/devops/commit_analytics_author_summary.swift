import Foundation

// MARK: - CommitAnalyticsAuthorSummary

public struct CommitAnalyticsAuthorSummary: Codable, Sendable {

    public var authorName: String?
    public var authorEmail: String?

    private enum CodingKeys: String, CodingKey {
        case authorName, authorEmail
    }

    public init(
                authorName: String? = nil,
                authorEmail: String? = nil
    ) {
        self.authorName = authorName
        self.authorEmail = authorEmail
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CommitAnalyticsAuthorSummary: CustomStringConvertible {
    public var description: String { "CommitAnalyticsAuthorSummary()" }
}