import Foundation

// MARK: - DeleteOracleDbAzureConnectorRequest

public struct DeleteOracleDbAzureConnectorRequest: Codable, Sendable {
    public var oracleDbAzureConnectorId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureConnectorId, ifMatch, opcRequestId
    }

    public init(
                oracleDbAzureConnectorId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.oracleDbAzureConnectorId = oracleDbAzureConnectorId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteOracleDbAzureConnectorRequest: CustomStringConvertible {
    public var description: String { "DeleteOracleDbAzureConnectorRequest()" }
}

// MARK: - DeleteOracleDbAzureConnectorResponse

public struct DeleteOracleDbAzureConnectorResponse: Codable, Sendable {
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

extension DeleteOracleDbAzureConnectorResponse: CustomStringConvertible {
    public var description: String { "DeleteOracleDbAzureConnectorResponse()" }
}