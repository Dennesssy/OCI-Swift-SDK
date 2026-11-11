import Foundation

// MARK: - AddCertificateLockRequest

public struct AddCertificateLockRequest: Codable, Sendable {
    public var certificateId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var addResourceLockDetails: AddResourceLockDetails?

    private enum CodingKeys: String, CodingKey {
        case certificateId, opcRequestId, ifMatch, addResourceLockDetails
    }

    public init(
                certificateId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                addResourceLockDetails: AddResourceLockDetails? = nil
    ) {
        self.certificateId = certificateId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.addResourceLockDetails = addResourceLockDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AddCertificateLockRequest: CustomStringConvertible {
    public var description: String { "AddCertificateLockRequest()" }
}

// MARK: - AddCertificateLockResponse

public struct AddCertificateLockResponse: Codable, Sendable {
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

extension AddCertificateLockResponse: CustomStringConvertible {
    public var description: String { "AddCertificateLockResponse()" }
}