import Foundation
import OCICommon

// MARK: - CreateOracleDbAzureVaultAssociationDetails

public struct CreateOracleDbAzureVaultAssociationDetails: Codable, Sendable {

    public var compartmentId: String?
    public var displayName: String?
    public var oracleDbAzureVaultId: String?
    public var oracleDbAzureConnectorId: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, oracleDbAzureVaultId, oracleDbAzureConnectorId, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                oracleDbAzureVaultId: String? = nil,
                oracleDbAzureConnectorId: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.oracleDbAzureVaultId = oracleDbAzureVaultId
        self.oracleDbAzureConnectorId = oracleDbAzureConnectorId
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbAzureVaultAssociationDetails: CustomStringConvertible {
    public var description: String { "CreateOracleDbAzureVaultAssociationDetails()" }
}