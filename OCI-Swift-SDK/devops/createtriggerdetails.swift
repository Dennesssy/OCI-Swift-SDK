import Foundation
import OCICommon

// MARK: - createtriggerdetails

public struct createtriggerdetails: Codable, Sendable {

    public var jsonData: Data?
    public var displayName: String?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var projectId: String?
    public var actions: Data
    public var triggerSource: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, displayName, description, freeformTags, definedTags, projectId, actions, triggerSource
    }

    public init(
                jsonData: Data? = nil,
                displayName: String? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                projectId: String? = nil,
                actions: Data,
                triggerSource: String? = nil
    ) {
        self.jsonData = jsonData
        self.displayName = displayName
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.projectId = projectId
        self.actions = actions
        self.triggerSource = triggerSource
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
