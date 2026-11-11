import Foundation

// MARK: - ReplicateOracleDbGcpKeyRingRequest

public struct ReplicateOracleDbGcpKeyRingRequest: Codable, Sendable {
    public var oracleDbGcpKeyRingId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var replicateOracleDbGcpKeyRingDetails: ReplicateOracleDbGcpKeyRingDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbGcpKeyRingId, ifMatch, opcRequestId, replicateOracleDbGcpKeyRingDetails
    }

    public init(
                oracleDbGcpKeyRingId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                replicateOracleDbGcpKeyRingDetails: ReplicateOracleDbGcpKeyRingDetails? = nil
    ) {
        self.oracleDbGcpKeyRingId = oracleDbGcpKeyRingId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.replicateOracleDbGcpKeyRingDetails = replicateOracleDbGcpKeyRingDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ReplicateOracleDbGcpKeyRingRequest: CustomStringConvertible {
    public var description: String { "ReplicateOracleDbGcpKeyRingRequest()" }
}

// MARK: - ReplicateOracleDbGcpKeyRingResponse

public struct ReplicateOracleDbGcpKeyRingResponse: Codable, Sendable {
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

extension ReplicateOracleDbGcpKeyRingResponse: CustomStringConvertible {
    public var description: String { "ReplicateOracleDbGcpKeyRingResponse()" }
}