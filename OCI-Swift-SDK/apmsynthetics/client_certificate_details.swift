import Foundation

// MARK: - ClientCertificateDetails

public struct ClientCertificateDetails: Codable, Sendable {

    public var clientCertificate: ClientCertificate?
    public var privateKey: PrivateKey?

    private enum CodingKeys: String, CodingKey {
        case clientCertificate, privateKey
    }

    public init(
                clientCertificate: ClientCertificate? = nil,
                privateKey: PrivateKey? = nil
    ) {
        self.clientCertificate = clientCertificate
        self.privateKey = privateKey
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ClientCertificateDetails: CustomStringConvertible {
    public var description: String { "ClientCertificateDetails()" }
}