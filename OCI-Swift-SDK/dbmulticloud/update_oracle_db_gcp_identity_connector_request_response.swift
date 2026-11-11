import Foundation

// MARK: - UpdateOracleDbGcpIdentityConnectorRequest

public struct UpdateOracleDbGcpIdentityConnectorRequest: Codable, Sendable {
    public var oracleDbGcpIdentityConnectorId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateOracleDbGcpIdentityConnectorDetails: UpdateOracleDbGcpIdentityConnectorDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbGcpIdentityConnectorId, ifMatch, opcRequestId, updateOracleDbGcpIdentityConnectorDetails
    }

    public init(
                oracleDbGcpIdentityConnectorId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateOracleDbGcpIdentityConnectorDetails: UpdateOracleDbGcpIdentityConnectorDetails? = nil
    ) {
        self.oracleDbGcpIdentityConnectorId = oracleDbGcpIdentityConnectorId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateOracleDbGcpIdentityConnectorDetails = updateOracleDbGcpIdentityConnectorDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateOracleDbGcpIdentityConnectorRequest: CustomStringConvertible {
    public var description: String { "UpdateOracleDbGcpIdentityConnectorRequest()" }
}

// MARK: - UpdateOracleDbGcpIdentityConnectorResponse

public struct UpdateOracleDbGcpIdentityConnectorResponse: Codable, Sendable {
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

extension UpdateOracleDbGcpIdentityConnectorResponse: CustomStringConvertible {
    public var description: String { "UpdateOracleDbGcpIdentityConnectorResponse()" }
}