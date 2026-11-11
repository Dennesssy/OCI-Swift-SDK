import Foundation

// MARK: - GetOracleDbAzureVaultRequest

public struct GetOracleDbAzureVaultRequest: Codable, Sendable {
    public var oracleDbAzureVaultId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: GetOracleDbAzureVaultSortOrderEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureVaultId, limit, page, sortOrder, opcRequestId
    }

    public init(
                oracleDbAzureVaultId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: GetOracleDbAzureVaultSortOrderEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.oracleDbAzureVaultId = oracleDbAzureVaultId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbAzureVaultRequest: CustomStringConvertible {
    public var description: String { "GetOracleDbAzureVaultRequest()" }
}

// MARK: - GetOracleDbAzureVaultResponse

public struct GetOracleDbAzureVaultResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var oracleDbAzureVault: OracleDbAzureVault?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, oracleDbAzureVault
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                oracleDbAzureVault: OracleDbAzureVault? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.oracleDbAzureVault = oracleDbAzureVault
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbAzureVaultResponse: CustomStringConvertible {
    public var description: String { "GetOracleDbAzureVaultResponse()" }
}