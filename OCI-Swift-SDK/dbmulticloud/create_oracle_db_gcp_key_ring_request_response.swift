import Foundation

// MARK: - CreateOracleDbGcpKeyRingRequest

public struct CreateOracleDbGcpKeyRingRequest: Codable, Sendable {
    public var ifMatch: String?
    public var opcRequestId: String?
    public var createOracleDbGcpKeyRingDetails: CreateOracleDbGcpKeyRingDetails?

    private enum CodingKeys: String, CodingKey {
        case ifMatch, opcRequestId, createOracleDbGcpKeyRingDetails
    }

    public init(
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                createOracleDbGcpKeyRingDetails: CreateOracleDbGcpKeyRingDetails? = nil
    ) {
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.createOracleDbGcpKeyRingDetails = createOracleDbGcpKeyRingDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbGcpKeyRingRequest: CustomStringConvertible {
    public var description: String { "CreateOracleDbGcpKeyRingRequest()" }
}

// MARK: - CreateOracleDbGcpKeyRingResponse

public struct CreateOracleDbGcpKeyRingResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var oracleDbGcpKeyRing: OracleDbGcpKeyRing?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId, location, contentLocation, etag, oracleDbGcpKeyRing
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                oracleDbGcpKeyRing: OracleDbGcpKeyRing? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.oracleDbGcpKeyRing = oracleDbGcpKeyRing
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbGcpKeyRingResponse: CustomStringConvertible {
    public var description: String { "CreateOracleDbGcpKeyRingResponse()" }
}