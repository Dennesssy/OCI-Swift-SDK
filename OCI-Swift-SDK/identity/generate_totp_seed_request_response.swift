import Foundation

// MARK: - GenerateTotpSeedRequest

public struct GenerateTotpSeedRequest: Codable, Sendable {
    public var userId: String?
    public var mfaTotpDeviceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case userId, mfaTotpDeviceId, ifMatch, opcRequestId
    }

    public init(
                userId: String? = nil,
                mfaTotpDeviceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.userId = userId
        self.mfaTotpDeviceId = mfaTotpDeviceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GenerateTotpSeedRequest: CustomStringConvertible {
    public var description: String { "GenerateTotpSeedRequest()" }
}

// MARK: - GenerateTotpSeedResponse

public struct GenerateTotpSeedResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var mfaTotpDevice: MfaTotpDevice?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, mfaTotpDevice
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                mfaTotpDevice: MfaTotpDevice? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.mfaTotpDevice = mfaTotpDevice
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GenerateTotpSeedResponse: CustomStringConvertible {
    public var description: String { "GenerateTotpSeedResponse()" }
}