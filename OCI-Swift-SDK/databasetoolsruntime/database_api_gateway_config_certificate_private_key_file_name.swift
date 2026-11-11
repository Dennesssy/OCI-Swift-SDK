import Foundation

// MARK: - DatabaseApiGatewayConfigCertificatePrivateKeyFileName

public struct DatabaseApiGatewayConfigCertificatePrivateKeyFileName: Codable, Sendable {

    public var format: DatabaseApiGatewayConfigCertificatePrivateKeyFileNameFormatEnum?
    public var path: String?

    private enum CodingKeys: String, CodingKey {
        case format, path
    }

    public init(
                format: DatabaseApiGatewayConfigCertificatePrivateKeyFileNameFormatEnum? = nil,
                path: String? = nil
    ) {
        self.format = format
        self.path = path
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DatabaseApiGatewayConfigCertificatePrivateKeyFileName: CustomStringConvertible {
    public var description: String { "DatabaseApiGatewayConfigCertificatePrivateKeyFileName()" }
}