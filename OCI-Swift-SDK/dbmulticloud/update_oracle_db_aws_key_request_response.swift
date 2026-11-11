import Foundation

// MARK: - UpdateOracleDbAwsKeyRequest

public struct UpdateOracleDbAwsKeyRequest: Codable, Sendable {
    public var oracleDbAwsKeyId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var isForceDeleteFromKeyPool: Bool?
    public var updateOracleDbAwsKeyDetails: UpdateOracleDbAwsKeyDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAwsKeyId, ifMatch, opcRequestId, isForceDeleteFromKeyPool, updateOracleDbAwsKeyDetails
    }

    public init(
                oracleDbAwsKeyId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                isForceDeleteFromKeyPool: Bool? = nil,
                updateOracleDbAwsKeyDetails: UpdateOracleDbAwsKeyDetails? = nil
    ) {
        self.oracleDbAwsKeyId = oracleDbAwsKeyId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.isForceDeleteFromKeyPool = isForceDeleteFromKeyPool
        self.updateOracleDbAwsKeyDetails = updateOracleDbAwsKeyDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateOracleDbAwsKeyRequest: CustomStringConvertible {
    public var description: String { "UpdateOracleDbAwsKeyRequest()" }
}

// MARK: - UpdateOracleDbAwsKeyResponse

public struct UpdateOracleDbAwsKeyResponse: Codable, Sendable {
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

extension UpdateOracleDbAwsKeyResponse: CustomStringConvertible {
    public var description: String { "UpdateOracleDbAwsKeyResponse()" }
}