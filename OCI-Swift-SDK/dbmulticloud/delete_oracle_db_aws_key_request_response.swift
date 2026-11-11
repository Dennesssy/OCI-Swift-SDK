import Foundation

// MARK: - DeleteOracleDbAwsKeyRequest

public struct DeleteOracleDbAwsKeyRequest: Codable, Sendable {
    public var oracleDbAwsKeyId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAwsKeyId, ifMatch, opcRequestId
    }

    public init(
                oracleDbAwsKeyId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.oracleDbAwsKeyId = oracleDbAwsKeyId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteOracleDbAwsKeyRequest: CustomStringConvertible {
    public var description: String { "DeleteOracleDbAwsKeyRequest()" }
}

// MARK: - DeleteOracleDbAwsKeyResponse

public struct DeleteOracleDbAwsKeyResponse: Codable, Sendable {
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

extension DeleteOracleDbAwsKeyResponse: CustomStringConvertible {
    public var description: String { "DeleteOracleDbAwsKeyResponse()" }
}