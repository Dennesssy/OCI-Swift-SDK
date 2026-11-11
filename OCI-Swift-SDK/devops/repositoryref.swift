import Foundation
import OCICommon

// MARK: - repositoryref

public struct repositoryref: Codable, Sendable {

    public var jsonData: Data?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var refName: String?
    public var fullRefName: String?
    public var repositoryId: String?
    public var refType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, freeformTags, definedTags, refName, fullRefName, repositoryId, refType
    }

    public init(
                jsonData: Data? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                refName: String? = nil,
                fullRefName: String? = nil,
                repositoryId: String? = nil,
                refType: String? = nil
    ) {
        self.jsonData = jsonData
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.refName = refName
        self.fullRefName = fullRefName
        self.repositoryId = repositoryId
        self.refType = refType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension repositoryref: CustomStringConvertible {
    public var description: String { "repositoryref()" }
}