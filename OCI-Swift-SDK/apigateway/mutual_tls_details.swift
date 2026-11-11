import Foundation

// MARK: - MutualTlsDetails

public struct MutualTlsDetails: Codable, Sendable {

    public var isVerifiedCertificateRequired: Bool?
    public var allowedSans: [String]?

    private enum CodingKeys: String, CodingKey {
        case isVerifiedCertificateRequired, allowedSans
    }

    public init(
                isVerifiedCertificateRequired: Bool? = nil,
                allowedSans: [String]? = nil
    ) {
        self.isVerifiedCertificateRequired = isVerifiedCertificateRequired
        self.allowedSans = allowedSans
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MutualTlsDetails: CustomStringConvertible {
    public var description: String { "MutualTlsDetails()" }
}