import Foundation

// MARK: - CreateCertificateRequest

public struct CreateCertificateRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createCertificateDetails: CreateCertificateDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createCertificateDetails
    }

    public init(
                opcRequestId: String? = nil,
                createCertificateDetails: CreateCertificateDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createCertificateDetails = createCertificateDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateCertificateRequest: CustomStringConvertible {
    public var description: String { "CreateCertificateRequest()" }
}

// MARK: - CreateCertificateResponse

public struct CreateCertificateResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var opcWorkRequestId: String?
    public var location: String?
    public var certificate: Certificate?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, opcWorkRequestId, location, certificate
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil,
                location: String? = nil,
                certificate: Certificate? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
        self.location = location
        self.certificate = certificate
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateCertificateResponse: CustomStringConvertible {
    public var description: String { "CreateCertificateResponse()" }
}