import Foundation

// MARK: - RefreshOracleDbAwsKeyRequest

public struct RefreshOracleDbAwsKeyRequest: Codable, Sendable {
    public var oracleDbAwsKeyId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var refreshOracleDbAwsKeyDetails: RefreshOracleDbAwsKeyDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAwsKeyId, ifMatch, opcRequestId, refreshOracleDbAwsKeyDetails
    }

    public init(
                oracleDbAwsKeyId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                refreshOracleDbAwsKeyDetails: RefreshOracleDbAwsKeyDetails? = nil
    ) {
        self.oracleDbAwsKeyId = oracleDbAwsKeyId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.refreshOracleDbAwsKeyDetails = refreshOracleDbAwsKeyDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RefreshOracleDbAwsKeyRequest: CustomStringConvertible {
    public var description: String { "RefreshOracleDbAwsKeyRequest()" }
}

// MARK: - RefreshOracleDbAwsKeyResponse

public struct RefreshOracleDbAwsKeyResponse: Codable, Sendable {
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

extension RefreshOracleDbAwsKeyResponse: CustomStringConvertible {
    public var description: String { "RefreshOracleDbAwsKeyResponse()" }
}