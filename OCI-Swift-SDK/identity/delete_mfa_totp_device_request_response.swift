import Foundation

// MARK: - DeleteMfaTotpDeviceRequest

public struct DeleteMfaTotpDeviceRequest: Codable, Sendable {
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

extension DeleteMfaTotpDeviceRequest: CustomStringConvertible {
    public var description: String { "DeleteMfaTotpDeviceRequest()" }
}

// MARK: - DeleteMfaTotpDeviceResponse

public struct DeleteMfaTotpDeviceResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteMfaTotpDeviceResponse: CustomStringConvertible {
    public var description: String { "DeleteMfaTotpDeviceResponse()" }
}