import Foundation

// MARK: - RefreshOracleDbGcpIdentityConnectorRequest

public struct RefreshOracleDbGcpIdentityConnectorRequest: Codable, Sendable {
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

extension RefreshOracleDbGcpIdentityConnectorRequest: CustomStringConvertible {
    public var description: String { "RefreshOracleDbGcpIdentityConnectorRequest()" }
}

// MARK: - RefreshOracleDbGcpIdentityConnectorResponse

public struct RefreshOracleDbGcpIdentityConnectorResponse: Codable, Sendable {
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

extension RefreshOracleDbGcpIdentityConnectorResponse: CustomStringConvertible {
    public var description: String { "RefreshOracleDbGcpIdentityConnectorResponse()" }
}