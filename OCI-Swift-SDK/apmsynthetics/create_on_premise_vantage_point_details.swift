import Foundation
import OCICommon

// MARK: - CreateOnPremiseVantagePointDetails

public struct CreateOnPremiseVantagePointDetails: Codable, Sendable {

    public var name: String?
    public var type: CreateOnPremiseVantagePointDetailsTypeEnum?
    public var description: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case name, type, description, freeformTags, definedTags
    }

    public init(
                name: String? = nil,
                type: CreateOnPremiseVantagePointDetailsTypeEnum? = nil,
                description: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.name = name
        self.type = type
        self.description = description
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
