import Foundation

// MARK: - CertificatesCertificateAuthority

public struct CertificatesCertificateAuthority: Codable, Sendable {

    public var certificateAuthorityId: String?

    private enum CodingKeys: String, CodingKey {
        case certificateAuthorityId
    }

    public init(
                certificateAuthorityId: String? = nil
    ) {
        self.certificateAuthorityId = certificateAuthorityId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CertificatesCertificateAuthority: CustomStringConvertible {
    public var description: String { "CertificatesCertificateAuthority()" }
}