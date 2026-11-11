import Foundation

// MARK: - GetPrivilegedApiRequestRequest

public struct GetPrivilegedApiRequestRequest: Codable, Sendable {
    public var privilegedApiRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case privilegedApiRequestId, opcRequestId
    }

    public init(
                privilegedApiRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.privilegedApiRequestId = privilegedApiRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPrivilegedApiRequestRequest: CustomStringConvertible {
    public var description: String { "GetPrivilegedApiRequestRequest()" }
}

// MARK: - GetPrivilegedApiRequestResponse

public struct GetPrivilegedApiRequestResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var privilegedApiRequest: PrivilegedApiRequest?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, privilegedApiRequest
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                privilegedApiRequest: PrivilegedApiRequest? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.privilegedApiRequest = privilegedApiRequest
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPrivilegedApiRequestResponse: CustomStringConvertible {
    public var description: String { "GetPrivilegedApiRequestResponse()" }
}