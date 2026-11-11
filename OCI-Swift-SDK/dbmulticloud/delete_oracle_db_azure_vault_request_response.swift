import Foundation

// MARK: - DeleteOracleDbAzureVaultRequest

public struct DeleteOracleDbAzureVaultRequest: Codable, Sendable {
    public var oracleDbAzureVaultId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureVaultId, ifMatch, opcRequestId
    }

    public init(
                oracleDbAzureVaultId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.oracleDbAzureVaultId = oracleDbAzureVaultId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteOracleDbAzureVaultRequest: CustomStringConvertible {
    public var description: String { "DeleteOracleDbAzureVaultRequest()" }
}

// MARK: - DeleteOracleDbAzureVaultResponse

public struct DeleteOracleDbAzureVaultResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcWorkRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcWorkRequestId
    }

    public init(
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteOracleDbAzureVaultResponse: CustomStringConvertible {
    public var description: String { "DeleteOracleDbAzureVaultResponse()" }
}