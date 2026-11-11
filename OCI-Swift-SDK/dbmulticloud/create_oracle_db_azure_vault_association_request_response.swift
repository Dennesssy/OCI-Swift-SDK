import Foundation

// MARK: - CreateOracleDbAzureVaultAssociationRequest

public struct CreateOracleDbAzureVaultAssociationRequest: Codable, Sendable {
    public var ifMatch: String?
    public var opcRequestId: String?
    public var createOracleDbAzureVaultAssociationDetails: CreateOracleDbAzureVaultAssociationDetails?

    private enum CodingKeys: String, CodingKey {
        case ifMatch, opcRequestId, createOracleDbAzureVaultAssociationDetails
    }

    public init(
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                createOracleDbAzureVaultAssociationDetails: CreateOracleDbAzureVaultAssociationDetails? = nil
    ) {
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.createOracleDbAzureVaultAssociationDetails = createOracleDbAzureVaultAssociationDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbAzureVaultAssociationRequest: CustomStringConvertible {
    public var description: String { "CreateOracleDbAzureVaultAssociationRequest()" }
}

// MARK: - CreateOracleDbAzureVaultAssociationResponse

public struct CreateOracleDbAzureVaultAssociationResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var oracleDbAzureVaultAssociation: OracleDbAzureVaultAssociation?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId, location, contentLocation, etag, oracleDbAzureVaultAssociation
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                oracleDbAzureVaultAssociation: OracleDbAzureVaultAssociation? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.oracleDbAzureVaultAssociation = oracleDbAzureVaultAssociation
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbAzureVaultAssociationResponse: CustomStringConvertible {
    public var description: String { "CreateOracleDbAzureVaultAssociationResponse()" }
}