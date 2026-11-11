import Foundation
import OCICommon

// MARK: - CreateOracleDbAzureBlobContainerDetails

public struct CreateOracleDbAzureBlobContainerDetails: Codable, Sendable {

    public var compartmentId: String?
    public var displayName: String?
    public var azureStorageAccountName: String?
    public var azureStorageContainerName: String?
    public var privateEndpointIpAddress: String?
    public var privateEndpointDnsAlias: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, azureStorageAccountName, azureStorageContainerName, privateEndpointIpAddress, privateEndpointDnsAlias, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                azureStorageAccountName: String? = nil,
                azureStorageContainerName: String? = nil,
                privateEndpointIpAddress: String? = nil,
                privateEndpointDnsAlias: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.azureStorageAccountName = azureStorageAccountName
        self.azureStorageContainerName = azureStorageContainerName
        self.privateEndpointIpAddress = privateEndpointIpAddress
        self.privateEndpointDnsAlias = privateEndpointDnsAlias
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbAzureBlobContainerDetails: CustomStringConvertible {
    public var description: String { "CreateOracleDbAzureBlobContainerDetails()" }
}