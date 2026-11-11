import Foundation

// MARK: - PatchOracleDbAzureConnectorRequest

public struct PatchOracleDbAzureConnectorRequest: Codable, Sendable {
    public var oracleDbAzureConnectorId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var patchOracleDbAzureConnectorDetails: PatchOracleDbAzureConnectorDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureConnectorId, ifMatch, opcRequestId, patchOracleDbAzureConnectorDetails
    }

    public init(
                oracleDbAzureConnectorId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                patchOracleDbAzureConnectorDetails: PatchOracleDbAzureConnectorDetails? = nil
    ) {
        self.oracleDbAzureConnectorId = oracleDbAzureConnectorId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.patchOracleDbAzureConnectorDetails = patchOracleDbAzureConnectorDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PatchOracleDbAzureConnectorRequest: CustomStringConvertible {
    public var description: String { "PatchOracleDbAzureConnectorRequest()" }
}

// MARK: - PatchOracleDbAzureConnectorResponse

public struct PatchOracleDbAzureConnectorResponse: Codable, Sendable {
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

extension PatchOracleDbAzureConnectorResponse: CustomStringConvertible {
    public var description: String { "PatchOracleDbAzureConnectorResponse()" }
}