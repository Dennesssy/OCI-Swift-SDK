import Foundation

// MARK: - ResourceAnalyticsInstanceOacAttachmentDetailsLicenseModelEnum

public enum ResourceAnalyticsInstanceOacAttachmentDetailsLicenseModelEnum: String, Codable, Sendable {
    case licenseIncluded = "LICENSE_INCLUDED"
    case bringYourOwnLicense = "BRING_YOUR_OWN_LICENSE"
}

public extension ResourceAnalyticsInstanceOacAttachmentDetailsLicenseModelEnum {
    static var allValues: [ResourceAnalyticsInstanceOacAttachmentDetailsLicenseModelEnum] { [.licenseIncluded, .bringYourOwnLicense] }
    static var allStringValues: [String] { ["LICENSE_INCLUDED", "BRING_YOUR_OWN_LICENSE"] }
    static func fromString(_ value: String) -> ResourceAnalyticsInstanceOacAttachmentDetailsLicenseModelEnum? { ResourceAnalyticsInstanceOacAttachmentDetailsLicenseModelEnum(rawValue: value) }
}