import Foundation

// MARK: - ChangeOracleDbAwsKeyCompartmentRequest

public struct ChangeOracleDbAwsKeyCompartmentRequest: Codable, Sendable {
    public var oracleDbAwsKeyId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeOracleDbAwsKeyCompartmentDetails: ChangeOracleDbAwsKeyCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAwsKeyId, ifMatch, opcRequestId, changeOracleDbAwsKeyCompartmentDetails
    }

    public init(
                oracleDbAwsKeyId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeOracleDbAwsKeyCompartmentDetails: ChangeOracleDbAwsKeyCompartmentDetails? = nil
    ) {
        self.oracleDbAwsKeyId = oracleDbAwsKeyId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeOracleDbAwsKeyCompartmentDetails = changeOracleDbAwsKeyCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeOracleDbAwsKeyCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeOracleDbAwsKeyCompartmentRequest()" }
}

// MARK: - ChangeOracleDbAwsKeyCompartmentResponse

public struct ChangeOracleDbAwsKeyCompartmentResponse: Codable, Sendable {
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

extension ChangeOracleDbAwsKeyCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeOracleDbAwsKeyCompartmentResponse()" }
}