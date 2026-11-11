import Foundation
import OCICommon

// MARK: - UpdateOracleDbAzureBlobMountDetails

public struct UpdateOracleDbAzureBlobMountDetails: Codable, Sendable {

    public var compartmentId: String?
    public var displayName: String?
    public var oracleDbAzureConnectorId: String?
    public var oracleDbAzureBlobContainerId: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, oracleDbAzureConnectorId, oracleDbAzureBlobContainerId, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                oracleDbAzureConnectorId: String? = nil,
                oracleDbAzureBlobContainerId: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.oracleDbAzureConnectorId = oracleDbAzureConnectorId
        self.oracleDbAzureBlobContainerId = oracleDbAzureBlobContainerId
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateOracleDbAzureBlobMountDetails: CustomStringConvertible {
    public var description: String { "UpdateOracleDbAzureBlobMountDetails()" }
}