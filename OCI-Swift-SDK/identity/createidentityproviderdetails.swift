import Foundation
import OCICommon

// MARK: - createidentityproviderdetails

public struct createidentityproviderdetails: Codable, Sendable {

    public var jsonData: Data?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var compartmentId: String?
    public var name: String?
    public var description: String?
    public var productType: CreateIdentityProviderDetailsProductTypeEnum
    public var `protocol`: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, freeformTags, definedTags, compartmentId, name, description, productType, `protocol`
    }

    public init(
                jsonData: Data? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                compartmentId: String? = nil,
                name: String? = nil,
                description: String? = nil,
                productType: CreateIdentityProviderDetailsProductTypeEnum,
                `protocol`: String? = nil
    ) {
        self.jsonData = jsonData
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.compartmentId = compartmentId
        self.name = name
        self.description = description
        self.productType = productType
        self.`protocol` = `protocol`
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
