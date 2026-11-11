import Foundation
import OCICommon

// MARK: - RepositoryTag

public struct RepositoryTag: Codable, Sendable {

    public var refName: String?
    public var fullRefName: String?
    public var repositoryId: String?
    public var objectId: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case refName, fullRefName, repositoryId, objectId, freeformTags, definedTags
    }

    public init(
                refName: String? = nil,
                fullRefName: String? = nil,
                repositoryId: String? = nil,
                objectId: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.refName = refName
        self.fullRefName = fullRefName
        self.repositoryId = repositoryId
        self.objectId = objectId
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RepositoryTag: CustomStringConvertible {
    public var description: String { "RepositoryTag()" }
}