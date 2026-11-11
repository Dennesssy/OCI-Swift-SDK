import Foundation
import OCICommon

// MARK: - RepositoryAuthorSummary

public struct RepositoryAuthorSummary: Codable, Sendable {

    public var authorName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case authorName, freeformTags, definedTags, systemTags
    }

    public init(
                authorName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.authorName = authorName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RepositoryAuthorSummary: CustomStringConvertible {
    public var description: String { "RepositoryAuthorSummary()" }
}