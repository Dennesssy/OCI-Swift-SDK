import Foundation

// MARK: - UpdateOracleDbAwsKeyPoolRequest

public struct UpdateOracleDbAwsKeyPoolRequest: Codable, Sendable {
    public var oracleDbAwsKeyPoolId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateOracleDbAwsKeyPoolDetails: UpdateOracleDbAwsKeyPoolDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAwsKeyPoolId, ifMatch, opcRequestId, updateOracleDbAwsKeyPoolDetails
    }

    public init(
                oracleDbAwsKeyPoolId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateOracleDbAwsKeyPoolDetails: UpdateOracleDbAwsKeyPoolDetails? = nil
    ) {
        self.oracleDbAwsKeyPoolId = oracleDbAwsKeyPoolId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateOracleDbAwsKeyPoolDetails = updateOracleDbAwsKeyPoolDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateOracleDbAwsKeyPoolRequest: CustomStringConvertible {
    public var description: String { "UpdateOracleDbAwsKeyPoolRequest()" }
}

// MARK: - UpdateOracleDbAwsKeyPoolResponse

public struct UpdateOracleDbAwsKeyPoolResponse: Codable, Sendable {
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

extension UpdateOracleDbAwsKeyPoolResponse: CustomStringConvertible {
    public var description: String { "UpdateOracleDbAwsKeyPoolResponse()" }
}