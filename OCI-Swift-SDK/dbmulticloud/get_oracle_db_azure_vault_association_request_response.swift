import Foundation

// MARK: - GetOracleDbAzureVaultAssociationRequest

public struct GetOracleDbAzureVaultAssociationRequest: Codable, Sendable {
    public var oracleDbAzureVaultAssociationId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: GetOracleDbAzureVaultAssociationSortOrderEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureVaultAssociationId, limit, page, sortOrder, opcRequestId
    }

    public init(
                oracleDbAzureVaultAssociationId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: GetOracleDbAzureVaultAssociationSortOrderEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.oracleDbAzureVaultAssociationId = oracleDbAzureVaultAssociationId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbAzureVaultAssociationRequest: CustomStringConvertible {
    public var description: String { "GetOracleDbAzureVaultAssociationRequest()" }
}

// MARK: - GetOracleDbAzureVaultAssociationResponse

public struct GetOracleDbAzureVaultAssociationResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var oracleDbAzureVaultAssociation: OracleDbAzureVaultAssociation?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, oracleDbAzureVaultAssociation
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                oracleDbAzureVaultAssociation: OracleDbAzureVaultAssociation? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.oracleDbAzureVaultAssociation = oracleDbAzureVaultAssociation
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbAzureVaultAssociationResponse: CustomStringConvertible {
    public var description: String { "GetOracleDbAzureVaultAssociationResponse()" }
}