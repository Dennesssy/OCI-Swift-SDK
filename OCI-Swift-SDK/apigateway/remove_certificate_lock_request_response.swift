import Foundation

// MARK: - RemoveCertificateLockRequest

public struct RemoveCertificateLockRequest: Codable, Sendable {
    public var certificateId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var removeResourceLockDetails: RemoveResourceLockDetails?

    private enum CodingKeys: String, CodingKey {
        case certificateId, opcRequestId, ifMatch, removeResourceLockDetails
    }

    public init(
                certificateId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                removeResourceLockDetails: RemoveResourceLockDetails? = nil
    ) {
        self.certificateId = certificateId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.removeResourceLockDetails = removeResourceLockDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoveCertificateLockRequest: CustomStringConvertible {
    public var description: String { "RemoveCertificateLockRequest()" }
}

// MARK: - RemoveCertificateLockResponse

public struct RemoveCertificateLockResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var certificate: Certificate?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, certificate
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                certificate: Certificate? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.certificate = certificate
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoveCertificateLockResponse: CustomStringConvertible {
    public var description: String { "RemoveCertificateLockResponse()" }
}