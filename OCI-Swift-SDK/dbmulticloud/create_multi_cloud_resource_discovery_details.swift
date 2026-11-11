import Foundation
import OCICommon

// MARK: - CreateMultiCloudResourceDiscoveryDetails

public struct CreateMultiCloudResourceDiscoveryDetails: Codable, Sendable {

    public var compartmentId: String?
    public var displayName: String?
    public var oracleDbConnectorId: String?
    public var resourceType: MultiCloudResourceDiscoveryResourceTypeEnum
    public var resourcesFilter: [String: String]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, oracleDbConnectorId, resourceType, resourcesFilter, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                oracleDbConnectorId: String? = nil,
                resourceType: MultiCloudResourceDiscoveryResourceTypeEnum,
                resourcesFilter: [String: String]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.oracleDbConnectorId = oracleDbConnectorId
        self.resourceType = resourceType
        self.resourcesFilter = resourcesFilter
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateMultiCloudResourceDiscoveryDetails: CustomStringConvertible {
    public var description: String { "CreateMultiCloudResourceDiscoveryDetails()" }
}