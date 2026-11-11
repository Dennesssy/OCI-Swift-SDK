import Foundation

// MARK: - GetOracleDbGcpKeyRingRequest

public struct GetOracleDbGcpKeyRingRequest: Codable, Sendable {
    public var oracleDbGcpKeyRingId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: GetOracleDbGcpKeyRingSortOrderEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbGcpKeyRingId, limit, page, sortOrder, opcRequestId
    }

    public init(
                oracleDbGcpKeyRingId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: GetOracleDbGcpKeyRingSortOrderEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.oracleDbGcpKeyRingId = oracleDbGcpKeyRingId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbGcpKeyRingRequest: CustomStringConvertible {
    public var description: String { "GetOracleDbGcpKeyRingRequest()" }
}

// MARK: - GetOracleDbGcpKeyRingResponse

public struct GetOracleDbGcpKeyRingResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var oracleDbGcpKeyRing: OracleDbGcpKeyRing?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, oracleDbGcpKeyRing
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                oracleDbGcpKeyRing: OracleDbGcpKeyRing? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.oracleDbGcpKeyRing = oracleDbGcpKeyRing
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetOracleDbGcpKeyRingResponse: CustomStringConvertible {
    public var description: String { "GetOracleDbGcpKeyRingResponse()" }
}