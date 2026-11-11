import Foundation
import OCICommon

// MARK: - identityprovider

public struct identityprovider: Codable, Sendable {

    public var jsonData: Data?
    public var inactiveStatus: Int64?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var id: String?
    public var compartmentId: String?
    public var name: String?
    public var description: String?
    public var productType: String?
    public var timeCreated: Date?
    public var lifecycleState: IdentityProviderLifecycleStateEnum
    public var `protocol`: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, inactiveStatus, freeformTags, definedTags, id, compartmentId, name, description, productType, timeCreated, lifecycleState, `protocol`
    }

    public init(
                jsonData: Data? = nil,
                inactiveStatus: Int64? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                id: String? = nil,
                compartmentId: String? = nil,
                name: String? = nil,
                description: String? = nil,
                productType: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: IdentityProviderLifecycleStateEnum,
                `protocol`: String? = nil
    ) {
        self.jsonData = jsonData
        self.inactiveStatus = inactiveStatus
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.id = id
        self.compartmentId = compartmentId
        self.name = name
        self.description = description
        self.productType = productType
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.`protocol` = `protocol`
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
