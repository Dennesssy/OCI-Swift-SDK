import Foundation

// MARK: - RefreshOracleDbGcpKeyRingRequest

public struct RefreshOracleDbGcpKeyRingRequest: Codable, Sendable {
    public var oracleDbGcpKeyRingId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var refreshOracleDbGcpKeyRingDetails: RefreshOracleDbGcpKeyRingDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbGcpKeyRingId, ifMatch, opcRequestId, refreshOracleDbGcpKeyRingDetails
    }

    public init(
                oracleDbGcpKeyRingId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                refreshOracleDbGcpKeyRingDetails: RefreshOracleDbGcpKeyRingDetails? = nil
    ) {
        self.oracleDbGcpKeyRingId = oracleDbGcpKeyRingId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.refreshOracleDbGcpKeyRingDetails = refreshOracleDbGcpKeyRingDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RefreshOracleDbGcpKeyRingRequest: CustomStringConvertible {
    public var description: String { "RefreshOracleDbGcpKeyRingRequest()" }
}

// MARK: - RefreshOracleDbGcpKeyRingResponse

public struct RefreshOracleDbGcpKeyRingResponse: Codable, Sendable {
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

extension RefreshOracleDbGcpKeyRingResponse: CustomStringConvertible {
    public var description: String { "RefreshOracleDbGcpKeyRingResponse()" }
}