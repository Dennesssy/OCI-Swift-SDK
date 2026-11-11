import Foundation

// MARK: - CertificatesCaBundle

public struct CertificatesCaBundle: Codable, Sendable {

    public var caBundleId: String?

    private enum CodingKeys: String, CodingKey {
        case caBundleId
    }

    public init(
                caBundleId: String? = nil
    ) {
        self.caBundleId = caBundleId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CertificatesCaBundle: CustomStringConvertible {
    public var description: String { "CertificatesCaBundle()" }
}