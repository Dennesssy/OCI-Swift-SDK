import Foundation

// MARK: - DatabaseApiGatewayConfigCertificatePublicFileName

public struct DatabaseApiGatewayConfigCertificatePublicFileName: Codable, Sendable {

    public var format: DatabaseApiGatewayConfigCertificatePublicFileNameFormatEnum?
    public var path: String?

    private enum CodingKeys: String, CodingKey {
        case format, path
    }

    public init(
                format: DatabaseApiGatewayConfigCertificatePublicFileNameFormatEnum? = nil,
                path: String? = nil
    ) {
        self.format = format
        self.path = path
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DatabaseApiGatewayConfigCertificatePublicFileName: CustomStringConvertible {
    public var description: String { "DatabaseApiGatewayConfigCertificatePublicFileName()" }
}