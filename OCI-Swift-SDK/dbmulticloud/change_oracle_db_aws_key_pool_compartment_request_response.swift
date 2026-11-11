import Foundation

// MARK: - ChangeOracleDbAwsKeyPoolCompartmentRequest

public struct ChangeOracleDbAwsKeyPoolCompartmentRequest: Codable, Sendable {
    public var oracleDbAwsKeyPoolId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeOracleDbAwsKeyPoolCompartmentDetails: ChangeOracleDbAwsKeyPoolCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAwsKeyPoolId, ifMatch, opcRequestId, changeOracleDbAwsKeyPoolCompartmentDetails
    }

    public init(
                oracleDbAwsKeyPoolId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeOracleDbAwsKeyPoolCompartmentDetails: ChangeOracleDbAwsKeyPoolCompartmentDetails? = nil
    ) {
        self.oracleDbAwsKeyPoolId = oracleDbAwsKeyPoolId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeOracleDbAwsKeyPoolCompartmentDetails = changeOracleDbAwsKeyPoolCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeOracleDbAwsKeyPoolCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeOracleDbAwsKeyPoolCompartmentRequest()" }
}

// MARK: - ChangeOracleDbAwsKeyPoolCompartmentResponse

public struct ChangeOracleDbAwsKeyPoolCompartmentResponse: Codable, Sendable {
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

extension ChangeOracleDbAwsKeyPoolCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeOracleDbAwsKeyPoolCompartmentResponse()" }
}