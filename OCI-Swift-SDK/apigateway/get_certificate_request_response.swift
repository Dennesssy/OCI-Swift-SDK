import Foundation

// MARK: - GetCertificateRequest

public struct GetCertificateRequest: Codable, Sendable {
    public var certificateId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case certificateId, opcRequestId
    }

    public init(
                certificateId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.certificateId = certificateId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetCertificateRequest: CustomStringConvertible {
    public var description: String { "GetCertificateRequest()" }
}

// MARK: - GetCertificateResponse

public struct GetCertificateResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var certificate: Certificate?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, certificate
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                certificate: Certificate? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.certificate = certificate
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetCertificateResponse: CustomStringConvertible {
    public var description: String { "GetCertificateResponse()" }
}