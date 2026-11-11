import Foundation

// MARK: - UpdateWlsDomainCredentialRequest

public struct UpdateWlsDomainCredentialRequest: Codable, Sendable {
    public var wlsDomainId: String?
    public var credentialType: UpdateWlsDomainCredentialCredentialTypeEnum
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateWlsDomainCredentialDetails: UpdateWlsDomainCredentialDetails?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainId, credentialType, ifMatch, opcRequestId, updateWlsDomainCredentialDetails
    }

    public init(
                wlsDomainId: String? = nil,
                credentialType: UpdateWlsDomainCredentialCredentialTypeEnum,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateWlsDomainCredentialDetails: UpdateWlsDomainCredentialDetails? = nil
    ) {
        self.wlsDomainId = wlsDomainId
        self.credentialType = credentialType
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateWlsDomainCredentialDetails = updateWlsDomainCredentialDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateWlsDomainCredentialRequest: CustomStringConvertible {
    public var description: String { "UpdateWlsDomainCredentialRequest()" }
}

// MARK: - UpdateWlsDomainCredentialResponse

public struct UpdateWlsDomainCredentialResponse: Codable, Sendable {
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

extension UpdateWlsDomainCredentialResponse: CustomStringConvertible {
    public var description: String { "UpdateWlsDomainCredentialResponse()" }
}