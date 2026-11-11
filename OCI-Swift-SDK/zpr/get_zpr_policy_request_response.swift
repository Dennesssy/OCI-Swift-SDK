import Foundation

// MARK: - GetZprPolicyRequest

public struct GetZprPolicyRequest: Codable, Sendable {
    public var zprPolicyId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case zprPolicyId, opcRequestId
    }

    public init(
                zprPolicyId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.zprPolicyId = zprPolicyId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetZprPolicyRequest: CustomStringConvertible {
    public var description: String { "GetZprPolicyRequest()" }
}

// MARK: - GetZprPolicyResponse

public struct GetZprPolicyResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var zprPolicy: ZprPolicy?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, zprPolicy
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                zprPolicy: ZprPolicy? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.zprPolicy = zprPolicy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetZprPolicyResponse: CustomStringConvertible {
    public var description: String { "GetZprPolicyResponse()" }
}