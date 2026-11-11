import Foundation
import OCICommon

// MARK: - UpdateMultiCloudResourceDiscoveryDetails

public struct UpdateMultiCloudResourceDiscoveryDetails: Codable, Sendable {

    public var compartmentId: String?
    public var displayName: String?
    public var oracleDbConnectorId: String?
    public var resourceType: MultiCloudResourceDiscoveryResourceTypeEnum?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, oracleDbConnectorId, resourceType, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                oracleDbConnectorId: String? = nil,
                resourceType: MultiCloudResourceDiscoveryResourceTypeEnum? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.oracleDbConnectorId = oracleDbConnectorId
        self.resourceType = resourceType
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateMultiCloudResourceDiscoveryDetails: CustomStringConvertible {
    public var description: String { "UpdateMultiCloudResourceDiscoveryDetails()" }
}