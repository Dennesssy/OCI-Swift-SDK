import Foundation

// MARK: - GetGdpWorkRequestRequest

public struct GetGdpWorkRequestRequest: Codable, Sendable {
    public var workRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case workRequestId, opcRequestId
    }

    public init(
                workRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.workRequestId = workRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetGdpWorkRequestRequest: CustomStringConvertible {
    public var description: String { "GetGdpWorkRequestRequest()" }
}

// MARK: - GetGdpWorkRequestResponse

public struct GetGdpWorkRequestResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var retryAfter: Int?
    public var gdpWorkRequest: GdpWorkRequest?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, retryAfter, gdpWorkRequest
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                retryAfter: Int? = nil,
                gdpWorkRequest: GdpWorkRequest? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.retryAfter = retryAfter
        self.gdpWorkRequest = gdpWorkRequest
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetGdpWorkRequestResponse: CustomStringConvertible {
    public var description: String { "GetGdpWorkRequestResponse()" }
}