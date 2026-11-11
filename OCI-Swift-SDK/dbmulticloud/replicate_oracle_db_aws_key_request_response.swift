import Foundation

// MARK: - ReplicateOracleDbAwsKeyRequest

public struct ReplicateOracleDbAwsKeyRequest: Codable, Sendable {
    public var oracleDbAwsKeyId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var replicateOracleDbAwsKeyDetails: ReplicateOracleDbAwsKeyDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAwsKeyId, ifMatch, opcRequestId, replicateOracleDbAwsKeyDetails
    }

    public init(
                oracleDbAwsKeyId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                replicateOracleDbAwsKeyDetails: ReplicateOracleDbAwsKeyDetails? = nil
    ) {
        self.oracleDbAwsKeyId = oracleDbAwsKeyId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.replicateOracleDbAwsKeyDetails = replicateOracleDbAwsKeyDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ReplicateOracleDbAwsKeyRequest: CustomStringConvertible {
    public var description: String { "ReplicateOracleDbAwsKeyRequest()" }
}

// MARK: - ReplicateOracleDbAwsKeyResponse

public struct ReplicateOracleDbAwsKeyResponse: Codable, Sendable {
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

extension ReplicateOracleDbAwsKeyResponse: CustomStringConvertible {
    public var description: String { "ReplicateOracleDbAwsKeyResponse()" }
}