import Foundation

// MARK: - GetWlsDomainCredentialRequest

public struct GetWlsDomainCredentialRequest: Codable, Sendable {
    public var wlsDomainId: String?
    public var credentialType: GetWlsDomainCredentialCredentialTypeEnum
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainId, credentialType, opcRequestId
    }

    public init(
                wlsDomainId: String? = nil,
                credentialType: GetWlsDomainCredentialCredentialTypeEnum,
                opcRequestId: String? = nil
    ) {
        self.wlsDomainId = wlsDomainId
        self.credentialType = credentialType
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetWlsDomainCredentialRequest: CustomStringConvertible {
    public var description: String { "GetWlsDomainCredentialRequest()" }
}

// MARK: - GetWlsDomainCredentialResponse

public struct GetWlsDomainCredentialResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var wlsDomainCredential: WlsDomainCredential?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, wlsDomainCredential
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                wlsDomainCredential: WlsDomainCredential? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.wlsDomainCredential = wlsDomainCredential
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetWlsDomainCredentialResponse: CustomStringConvertible {
    public var description: String { "GetWlsDomainCredentialResponse()" }
}