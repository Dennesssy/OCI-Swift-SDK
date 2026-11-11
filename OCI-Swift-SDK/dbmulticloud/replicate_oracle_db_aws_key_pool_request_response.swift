import Foundation

// MARK: - ReplicateOracleDbAwsKeyPoolRequest

public struct ReplicateOracleDbAwsKeyPoolRequest: Codable, Sendable {
    public var oracleDbAwsKeyPoolId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var replicateOracleDbAwsKeyPoolDetails: ReplicateOracleDbAwsKeyPoolDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAwsKeyPoolId, ifMatch, opcRequestId, replicateOracleDbAwsKeyPoolDetails
    }

    public init(
                oracleDbAwsKeyPoolId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                replicateOracleDbAwsKeyPoolDetails: ReplicateOracleDbAwsKeyPoolDetails? = nil
    ) {
        self.oracleDbAwsKeyPoolId = oracleDbAwsKeyPoolId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.replicateOracleDbAwsKeyPoolDetails = replicateOracleDbAwsKeyPoolDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ReplicateOracleDbAwsKeyPoolRequest: CustomStringConvertible {
    public var description: String { "ReplicateOracleDbAwsKeyPoolRequest()" }
}

// MARK: - ReplicateOracleDbAwsKeyPoolResponse

public struct ReplicateOracleDbAwsKeyPoolResponse: Codable, Sendable {
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

extension ReplicateOracleDbAwsKeyPoolResponse: CustomStringConvertible {
    public var description: String { "ReplicateOracleDbAwsKeyPoolResponse()" }
}