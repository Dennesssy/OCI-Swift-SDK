import Foundation

// MARK: - CaCertVerify

public struct CaCertVerify: Codable, Sendable {

    public var caCertificateBundleId: String?

    private enum CodingKeys: String, CodingKey {
        case caCertificateBundleId
    }

    public init(
                caCertificateBundleId: String? = nil
    ) {
        self.caCertificateBundleId = caCertificateBundleId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CaCertVerify: CustomStringConvertible {
    public var description: String { "CaCertVerify()" }
}