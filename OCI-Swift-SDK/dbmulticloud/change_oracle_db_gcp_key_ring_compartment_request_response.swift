import Foundation

// MARK: - ChangeOracleDbGcpKeyRingCompartmentRequest

public struct ChangeOracleDbGcpKeyRingCompartmentRequest: Codable, Sendable {
    public var oracleDbGcpKeyRingId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeOracleDbGcpKeyRingCompartmentDetails: ChangeOracleDbGcpKeyRingCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbGcpKeyRingId, ifMatch, opcRequestId, changeOracleDbGcpKeyRingCompartmentDetails
    }

    public init(
                oracleDbGcpKeyRingId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeOracleDbGcpKeyRingCompartmentDetails: ChangeOracleDbGcpKeyRingCompartmentDetails? = nil
    ) {
        self.oracleDbGcpKeyRingId = oracleDbGcpKeyRingId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeOracleDbGcpKeyRingCompartmentDetails = changeOracleDbGcpKeyRingCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeOracleDbGcpKeyRingCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeOracleDbGcpKeyRingCompartmentRequest()" }
}

// MARK: - ChangeOracleDbGcpKeyRingCompartmentResponse

public struct ChangeOracleDbGcpKeyRingCompartmentResponse: Codable, Sendable {
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

extension ChangeOracleDbGcpKeyRingCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeOracleDbGcpKeyRingCompartmentResponse()" }
}