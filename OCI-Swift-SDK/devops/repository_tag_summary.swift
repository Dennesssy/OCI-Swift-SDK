import Foundation
import OCICommon

// MARK: - RepositoryTagSummary

public struct RepositoryTagSummary: Codable, Sendable {

    public var refName: String?
    public var fullRefName: String?
    public var repositoryId: String?
    public var objectId: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case refName, fullRefName, repositoryId, objectId, timeCreated, timeUpdated, freeformTags, definedTags, systemTags
    }

    public init(
                refName: String? = nil,
                fullRefName: String? = nil,
                repositoryId: String? = nil,
                objectId: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.refName = refName
        self.fullRefName = fullRefName
        self.repositoryId = repositoryId
        self.objectId = objectId
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RepositoryTagSummary: CustomStringConvertible {
    public var description: String { "RepositoryTagSummary()" }
}