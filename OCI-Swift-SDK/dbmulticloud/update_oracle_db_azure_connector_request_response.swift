import Foundation

// MARK: - UpdateOracleDbAzureConnectorRequest

public struct UpdateOracleDbAzureConnectorRequest: Codable, Sendable {
    public var oracleDbAzureConnectorId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateOracleDbAzureConnectorDetails: UpdateOracleDbAzureConnectorDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureConnectorId, ifMatch, opcRequestId, updateOracleDbAzureConnectorDetails
    }

    public init(
                oracleDbAzureConnectorId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateOracleDbAzureConnectorDetails: UpdateOracleDbAzureConnectorDetails? = nil
    ) {
        self.oracleDbAzureConnectorId = oracleDbAzureConnectorId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateOracleDbAzureConnectorDetails = updateOracleDbAzureConnectorDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateOracleDbAzureConnectorRequest: CustomStringConvertible {
    public var description: String { "UpdateOracleDbAzureConnectorRequest()" }
}

// MARK: - UpdateOracleDbAzureConnectorResponse

public struct UpdateOracleDbAzureConnectorResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateOracleDbAzureConnectorResponse: CustomStringConvertible {
    public var description: String { "UpdateOracleDbAzureConnectorResponse()" }
}