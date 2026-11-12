import Foundation

// MARK: - CreateMfaTotpDeviceRequest

public struct CreateMfaTotpDeviceRequest: Codable, Sendable {
    public var userId: String?
    public var opcRequestId: String?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case userId, opcRequestId, opcRetryToken
    }

    public init(
                userId: String? = nil,
                opcRequestId: String? = nil,
                opcRetryToken: String? = nil
    ) {
        self.userId = userId
        self.opcRequestId = opcRequestId
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateMfaTotpDeviceRequest: CustomStringConvertible {
    public var description: String { "CreateMfaTotpDeviceRequest()" }
}

// MARK: - CreateMfaTotpDeviceResponse

public struct CreateMfaTotpDeviceResponse: Codable, Sendable {
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

extension CreateMfaTotpDeviceResponse: CustomStringConvertible {
    public var description: String { "CreateMfaTotpDeviceResponse()" }
}