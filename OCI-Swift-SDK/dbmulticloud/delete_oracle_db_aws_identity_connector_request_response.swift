import Foundation

// MARK: - DeleteOracleDbAwsIdentityConnectorRequest

public struct DeleteOracleDbAwsIdentityConnectorRequest: Codable, Sendable {
    public var oracleDbAwsIdentityConnectorId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAwsIdentityConnectorId, ifMatch, opcRequestId
    }

    public init(
                oracleDbAwsIdentityConnectorId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.oracleDbAwsIdentityConnectorId = oracleDbAwsIdentityConnectorId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteOracleDbAwsIdentityConnectorRequest: CustomStringConvertible {
    public var description: String { "DeleteOracleDbAwsIdentityConnectorRequest()" }
}

// MARK: - DeleteOracleDbAwsIdentityConnectorResponse

public struct DeleteOracleDbAwsIdentityConnectorResponse: Codable, Sendable {
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

extension DeleteOracleDbAwsIdentityConnectorResponse: CustomStringConvertible {
    public var description: String { "DeleteOracleDbAwsIdentityConnectorResponse()" }
}