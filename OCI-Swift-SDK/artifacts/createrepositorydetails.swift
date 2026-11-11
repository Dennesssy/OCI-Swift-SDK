import Foundation
import OCICommon

// MARK: - createrepositorydetails

public struct createrepositorydetails: Codable, Sendable {

    public var jsonData: Data?
    public var displayName: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var compartmentId: String?
    public var isImmutable: Bool?
    public var repositoryType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, displayName, description, freeformTags, definedTags, compartmentId, isImmutable, repositoryType
    }

    public init(
                jsonData: Data? = nil,
                displayName: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                compartmentId: String? = nil,
                isImmutable: Bool? = nil,
                repositoryType: String? = nil
    ) {
        self.jsonData = jsonData
        self.displayName = displayName
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.compartmentId = compartmentId
        self.isImmutable = isImmutable
        self.repositoryType = repositoryType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
