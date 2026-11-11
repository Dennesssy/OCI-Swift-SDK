import Foundation

// MARK: - ChangeDomainLicenseTypeDetails

public struct ChangeDomainLicenseTypeDetails: Codable, Sendable {

    public var licenseType: String?

    private enum CodingKeys: String, CodingKey {
        case licenseType
    }

    public init(
                licenseType: String? = nil
    ) {
        self.licenseType = licenseType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeDomainLicenseTypeDetails: CustomStringConvertible {
    public var description: String { "ChangeDomainLicenseTypeDetails()" }
}