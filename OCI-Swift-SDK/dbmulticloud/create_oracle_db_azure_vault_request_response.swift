import Foundation

// MARK: - CreateOracleDbAzureVaultRequest

public struct CreateOracleDbAzureVaultRequest: Codable, Sendable {
    public var ifMatch: String?
    public var opcRequestId: String?
    public var createOracleDbAzureVaultDetails: CreateOracleDbAzureVaultDetails?

    private enum CodingKeys: String, CodingKey {
        case ifMatch, opcRequestId, createOracleDbAzureVaultDetails
    }

    public init(
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                createOracleDbAzureVaultDetails: CreateOracleDbAzureVaultDetails? = nil
    ) {
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.createOracleDbAzureVaultDetails = createOracleDbAzureVaultDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbAzureVaultRequest: CustomStringConvertible {
    public var description: String { "CreateOracleDbAzureVaultRequest()" }
}

// MARK: - CreateOracleDbAzureVaultResponse

public struct CreateOracleDbAzureVaultResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var oracleDbAzureVault: OracleDbAzureVault?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId, location, contentLocation, etag, oracleDbAzureVault
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                oracleDbAzureVault: OracleDbAzureVault? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.oracleDbAzureVault = oracleDbAzureVault
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbAzureVaultResponse: CustomStringConvertible {
    public var description: String { "CreateOracleDbAzureVaultResponse()" }
}