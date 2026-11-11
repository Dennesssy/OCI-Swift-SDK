import Foundation
import OCICommon

// MARK: - ChangeOracleDbAzureVaultAssociationCompartmentDetails

public struct ChangeOracleDbAzureVaultAssociationCompartmentDetails: Codable, Sendable {

    public var compartmentId: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, freeformTags, definedTags, systemTags
    }

    public init(
                compartmentId: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeOracleDbAzureVaultAssociationCompartmentDetails: CustomStringConvertible {
    public var description: String { "ChangeOracleDbAzureVaultAssociationCompartmentDetails()" }
}