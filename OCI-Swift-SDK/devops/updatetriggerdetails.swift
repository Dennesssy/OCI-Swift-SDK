import Foundation
import OCICommon

// MARK: - updatetriggerdetails

public struct updatetriggerdetails: Codable, Sendable {

    public var jsonData: Data?
    public var displayName: String?
    public var description: String?
    public var actions: Data?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var triggerSource: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, displayName, description, actions, freeformTags, definedTags, triggerSource
    }

    public init(
                jsonData: Data? = nil,
                displayName: String? = nil,
                description: String? = nil,
                actions: Data? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                triggerSource: String? = nil
    ) {
        self.jsonData = jsonData
        self.displayName = displayName
        self.description = description
        self.actions = actions
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.triggerSource = triggerSource
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
