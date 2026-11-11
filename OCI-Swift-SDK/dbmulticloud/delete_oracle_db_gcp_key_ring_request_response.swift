import Foundation

// MARK: - DeleteOracleDbGcpKeyRingRequest

public struct DeleteOracleDbGcpKeyRingRequest: Codable, Sendable {
    public var oracleDbGcpKeyRingId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbGcpKeyRingId, ifMatch, opcRequestId
    }

    public init(
                oracleDbGcpKeyRingId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.oracleDbGcpKeyRingId = oracleDbGcpKeyRingId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteOracleDbGcpKeyRingRequest: CustomStringConvertible {
    public var description: String { "DeleteOracleDbGcpKeyRingRequest()" }
}

// MARK: - DeleteOracleDbGcpKeyRingResponse

public struct DeleteOracleDbGcpKeyRingResponse: Codable, Sendable {
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

extension DeleteOracleDbGcpKeyRingResponse: CustomStringConvertible {
    public var description: String { "DeleteOracleDbGcpKeyRingResponse()" }
}