import Foundation

// MARK: - DeleteOracleDbGcpIdentityConnectorRequest

public struct DeleteOracleDbGcpIdentityConnectorRequest: Codable, Sendable {
    public var oracleDbGcpIdentityConnectorId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbGcpIdentityConnectorId, ifMatch, opcRequestId
    }

    public init(
                oracleDbGcpIdentityConnectorId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.oracleDbGcpIdentityConnectorId = oracleDbGcpIdentityConnectorId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteOracleDbGcpIdentityConnectorRequest: CustomStringConvertible {
    public var description: String { "DeleteOracleDbGcpIdentityConnectorRequest()" }
}

// MARK: - DeleteOracleDbGcpIdentityConnectorResponse

public struct DeleteOracleDbGcpIdentityConnectorResponse: Codable, Sendable {
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

extension DeleteOracleDbGcpIdentityConnectorResponse: CustomStringConvertible {
    public var description: String { "DeleteOracleDbGcpIdentityConnectorResponse()" }
}