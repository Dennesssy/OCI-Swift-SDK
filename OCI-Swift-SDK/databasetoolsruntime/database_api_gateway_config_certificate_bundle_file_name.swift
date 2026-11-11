import Foundation

// MARK: - DatabaseApiGatewayConfigCertificateBundleFileName

public struct DatabaseApiGatewayConfigCertificateBundleFileName: Codable, Sendable {

    public var certificatePublic: DatabaseApiGatewayConfigCertificatePublicFileName?
    public var certificatePrivateKey: DatabaseApiGatewayConfigCertificatePrivateKeyFileName?

    private enum CodingKeys: String, CodingKey {
        case certificatePublic, certificatePrivateKey
    }

    public init(
                certificatePublic: DatabaseApiGatewayConfigCertificatePublicFileName? = nil,
                certificatePrivateKey: DatabaseApiGatewayConfigCertificatePrivateKeyFileName? = nil
    ) {
        self.certificatePublic = certificatePublic
        self.certificatePrivateKey = certificatePrivateKey
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DatabaseApiGatewayConfigCertificateBundleFileName: CustomStringConvertible {
    public var description: String { "DatabaseApiGatewayConfigCertificateBundleFileName()" }
}