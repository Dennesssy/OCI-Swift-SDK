import Foundation

// MARK: - CertificateCollection

public struct CertificateCollection: Codable, Sendable {

    public var items: [CertificateSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [CertificateSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CertificateCollection: CustomStringConvertible {
    public var description: String { "CertificateCollection()" }
}