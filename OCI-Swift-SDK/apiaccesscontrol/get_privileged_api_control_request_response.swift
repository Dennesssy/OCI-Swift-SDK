import Foundation

// MARK: - GetPrivilegedApiControlRequest

public struct GetPrivilegedApiControlRequest: Codable, Sendable {
    public var privilegedApiControlId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case privilegedApiControlId, opcRequestId
    }

    public init(
                privilegedApiControlId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.privilegedApiControlId = privilegedApiControlId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPrivilegedApiControlRequest: CustomStringConvertible {
    public var description: String { "GetPrivilegedApiControlRequest()" }
}

// MARK: - GetPrivilegedApiControlResponse

public struct GetPrivilegedApiControlResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var privilegedApiControl: PrivilegedApiControl?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, privilegedApiControl
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                privilegedApiControl: PrivilegedApiControl? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.privilegedApiControl = privilegedApiControl
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPrivilegedApiControlResponse: CustomStringConvertible {
    public var description: String { "GetPrivilegedApiControlResponse()" }
}