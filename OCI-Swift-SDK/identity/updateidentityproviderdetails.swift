import Foundation
import OCICommon

// MARK: - updateidentityproviderdetails

public struct updateidentityproviderdetails: Codable, Sendable {

    public var jsonData: Data?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var `protocol`: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, description, freeformTags, definedTags, `protocol`
    }

    public init(
                jsonData: Data? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                `protocol`: String? = nil
    ) {
        self.jsonData = jsonData
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.`protocol` = `protocol`
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
