import Foundation
import OCICommon

// MARK: - createconnectiondetails

public struct createconnectiondetails: Codable, Sendable {

    public var jsonData: Data?
    public var description: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var projectId: String?
    public var connectionType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, description, displayName, freeformTags, definedTags, projectId, connectionType
    }

    public init(
                jsonData: Data? = nil,
                description: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                projectId: String? = nil,
                connectionType: String? = nil
    ) {
        self.jsonData = jsonData
        self.description = description
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.projectId = projectId
        self.connectionType = connectionType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
