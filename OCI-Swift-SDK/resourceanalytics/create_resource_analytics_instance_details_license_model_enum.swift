import Foundation

// MARK: - CreateResourceAnalyticsInstanceDetailsLicenseModelEnum

public enum CreateResourceAnalyticsInstanceDetailsLicenseModelEnum: String, Codable, Sendable {
    case licenseIncluded = "LICENSE_INCLUDED"
    case bringYourOwnLicense = "BRING_YOUR_OWN_LICENSE"
}

public extension CreateResourceAnalyticsInstanceDetailsLicenseModelEnum {
    static var allValues: [CreateResourceAnalyticsInstanceDetailsLicenseModelEnum] { [.licenseIncluded, .bringYourOwnLicense] }
    static var allStringValues: [String] { ["LICENSE_INCLUDED", "BRING_YOUR_OWN_LICENSE"] }
    static func fromString(_ value: String) -> CreateResourceAnalyticsInstanceDetailsLicenseModelEnum? { CreateResourceAnalyticsInstanceDetailsLicenseModelEnum(rawValue: value) }
}