import Foundation

// MARK: - ActivateMfaTotpDeviceRequest

public struct ActivateMfaTotpDeviceRequest: Codable, Sendable {
    public var userId: String?
    public var mfaTotpDeviceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var mfaTotpToken: MfaTotpToken?

    private enum CodingKeys: String, CodingKey {
        case userId, mfaTotpDeviceId, ifMatch, opcRequestId, mfaTotpToken
    }

    public init(
                userId: String? = nil,
                mfaTotpDeviceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                mfaTotpToken: MfaTotpToken? = nil
    ) {
        self.userId = userId
        self.mfaTotpDeviceId = mfaTotpDeviceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.mfaTotpToken = mfaTotpToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ActivateMfaTotpDeviceRequest: CustomStringConvertible {
    public var description: String { "ActivateMfaTotpDeviceRequest()" }
}

// MARK: - ActivateMfaTotpDeviceResponse

public struct ActivateMfaTotpDeviceResponse: Codable, Sendable {
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

extension ActivateMfaTotpDeviceResponse: CustomStringConvertible {
    public var description: String { "ActivateMfaTotpDeviceResponse()" }
}