import Foundation

// MARK: - GetOracleDbGcpKeyRequest

public struct GetOracleDbGcpKeyRequest: Codable, Sendable {
    public var oracleDbGcpKeyId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbGcpKeyId, opcRequestId
    }

    public init(
                oracleDbGcpKeyId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.oracleDbGcpKeyId = oracleDbGcpKeyId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbGcpKeyRequest: CustomStringConvertible {
    public var description: String { "GetOracleDbGcpKeyRequest()" }
}

// MARK: - GetOracleDbGcpKeyResponse

public struct GetOracleDbGcpKeyResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var oracleDbGcpKey: OracleDbGcpKey?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, oracleDbGcpKey
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                oracleDbGcpKey: OracleDbGcpKey? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.oracleDbGcpKey = oracleDbGcpKey
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbGcpKeyResponse: CustomStringConvertible {
    public var description: String { "GetOracleDbGcpKeyResponse()" }
}