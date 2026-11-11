import Foundation

// MARK: - GetMfaTotpDeviceRequest

public struct GetMfaTotpDeviceRequest: Codable, Sendable {
    public var userId: String?
    public var mfaTotpDeviceId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case userId, mfaTotpDeviceId, opcRequestId
    }

    public init(
                userId: String? = nil,
                mfaTotpDeviceId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.userId = userId
        self.mfaTotpDeviceId = mfaTotpDeviceId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetMfaTotpDeviceRequest: CustomStringConvertible {
    public var description: String { "GetMfaTotpDeviceRequest()" }
}

// MARK: - GetMfaTotpDeviceResponse

public struct GetMfaTotpDeviceResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var mfaTotpDeviceSummary: MfaTotpDeviceSummary?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, mfaTotpDeviceSummary
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                mfaTotpDeviceSummary: MfaTotpDeviceSummary? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.mfaTotpDeviceSummary = mfaTotpDeviceSummary
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetMfaTotpDeviceResponse: CustomStringConvertible {
    public var description: String { "GetMfaTotpDeviceResponse()" }
}