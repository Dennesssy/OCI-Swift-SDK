import Foundation

// MARK: - GetDelegatedResourceAccessRequestRequest

public struct GetDelegatedResourceAccessRequestRequest: Codable, Sendable {
    public var delegatedResourceAccessRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case delegatedResourceAccessRequestId, opcRequestId
    }

    public init(
                delegatedResourceAccessRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.delegatedResourceAccessRequestId = delegatedResourceAccessRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDelegatedResourceAccessRequestRequest: CustomStringConvertible {
    public var description: String { "GetDelegatedResourceAccessRequestRequest()" }
}

// MARK: - GetDelegatedResourceAccessRequestResponse

public struct GetDelegatedResourceAccessRequestResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var delegatedResourceAccessRequest: DelegatedResourceAccessRequest?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, delegatedResourceAccessRequest
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                delegatedResourceAccessRequest: DelegatedResourceAccessRequest? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.delegatedResourceAccessRequest = delegatedResourceAccessRequest
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDelegatedResourceAccessRequestResponse: CustomStringConvertible {
    public var description: String { "GetDelegatedResourceAccessRequestResponse()" }
}