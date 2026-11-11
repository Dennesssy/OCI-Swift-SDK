import Foundation
import OCICommon

// MARK: - UpdateOracleDbAzureBlobContainerDetails

public struct UpdateOracleDbAzureBlobContainerDetails: Codable, Sendable {

    public var compartmentId: String?
    public var displayName: String?
    public var privateEndpointIpAddress: String?
    public var privateEndpointDnsAlias: String?
    public var azureStorageAccountName: String?
    public var azureStorageContainerName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, privateEndpointIpAddress, privateEndpointDnsAlias, azureStorageAccountName, azureStorageContainerName, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                privateEndpointIpAddress: String? = nil,
                privateEndpointDnsAlias: String? = nil,
                azureStorageAccountName: String? = nil,
                azureStorageContainerName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.privateEndpointIpAddress = privateEndpointIpAddress
        self.privateEndpointDnsAlias = privateEndpointDnsAlias
        self.azureStorageAccountName = azureStorageAccountName
        self.azureStorageContainerName = azureStorageContainerName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateOracleDbAzureBlobContainerDetails: CustomStringConvertible {
    public var description: String { "UpdateOracleDbAzureBlobContainerDetails()" }
}