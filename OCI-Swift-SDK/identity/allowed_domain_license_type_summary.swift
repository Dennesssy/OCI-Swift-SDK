import Foundation

// MARK: - AllowedDomainLicenseTypeSummary

public struct AllowedDomainLicenseTypeSummary: Codable, Sendable {

    public var name: String?
    public var licenseType: String?
    public var description: String?

    private enum CodingKeys: String, CodingKey {
        case name, licenseType, description
    }

    public init(
                name: String? = nil,
                licenseType: String? = nil,
                description: String? = nil
    ) {
        self.name = name
        self.licenseType = licenseType
        self.description = description
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
