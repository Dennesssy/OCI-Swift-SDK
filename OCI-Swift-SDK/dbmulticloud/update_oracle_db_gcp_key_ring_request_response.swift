import Foundation

// MARK: - UpdateOracleDbGcpKeyRingRequest

public struct UpdateOracleDbGcpKeyRingRequest: Codable, Sendable {
    public var oracleDbGcpKeyRingId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateOracleDbGcpKeyRingDetails: UpdateOracleDbGcpKeyRingDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbGcpKeyRingId, ifMatch, opcRequestId, updateOracleDbGcpKeyRingDetails
    }

    public init(
                oracleDbGcpKeyRingId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateOracleDbGcpKeyRingDetails: UpdateOracleDbGcpKeyRingDetails? = nil
    ) {
        self.oracleDbGcpKeyRingId = oracleDbGcpKeyRingId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateOracleDbGcpKeyRingDetails = updateOracleDbGcpKeyRingDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateOracleDbGcpKeyRingRequest: CustomStringConvertible {
    public var description: String { "UpdateOracleDbGcpKeyRingRequest()" }
}

// MARK: - UpdateOracleDbGcpKeyRingResponse

public struct UpdateOracleDbGcpKeyRingResponse: Codable, Sendable {
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

extension UpdateOracleDbGcpKeyRingResponse: CustomStringConvertible {
    public var description: String { "UpdateOracleDbGcpKeyRingResponse()" }
}