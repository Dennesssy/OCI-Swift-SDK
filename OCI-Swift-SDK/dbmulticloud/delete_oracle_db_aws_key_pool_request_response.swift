import Foundation

// MARK: - DeleteOracleDbAwsKeyPoolRequest

public struct DeleteOracleDbAwsKeyPoolRequest: Codable, Sendable {
    public var oracleDbAwsKeyPoolId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAwsKeyPoolId, ifMatch, opcRequestId
    }

    public init(
                oracleDbAwsKeyPoolId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.oracleDbAwsKeyPoolId = oracleDbAwsKeyPoolId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteOracleDbAwsKeyPoolRequest: CustomStringConvertible {
    public var description: String { "DeleteOracleDbAwsKeyPoolRequest()" }
}

// MARK: - DeleteOracleDbAwsKeyPoolResponse

public struct DeleteOracleDbAwsKeyPoolResponse: Codable, Sendable {
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

extension DeleteOracleDbAwsKeyPoolResponse: CustomStringConvertible {
    public var description: String { "DeleteOracleDbAwsKeyPoolResponse()" }
}