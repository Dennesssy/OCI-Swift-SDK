import Foundation

// MARK: - GetPsaWorkRequestRequest

public struct GetPsaWorkRequestRequest: Codable, Sendable {
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

extension GetPsaWorkRequestRequest: CustomStringConvertible {
    public var description: String { "GetPsaWorkRequestRequest()" }
}

// MARK: - GetPsaWorkRequestResponse

public struct GetPsaWorkRequestResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var retryAfter: Int?
    public var workRequest: WorkRequest?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, retryAfter, workRequest
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                retryAfter: Int? = nil,
                workRequest: WorkRequest? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.retryAfter = retryAfter
        self.workRequest = workRequest
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPsaWorkRequestResponse: CustomStringConvertible {
    public var description: String { "GetPsaWorkRequestResponse()" }
}