import Foundation

// MARK: - CaBundleTypeEnum

public enum CaBundleTypeEnum: String, Codable, Sendable {
    case caBundle = "CA_BUNDLE"
    case certificateAuthority = "CERTIFICATE_AUTHORITY"
}

public extension CaBundleTypeEnum {
    static var allValues: [CaBundleTypeEnum] { [.caBundle, .certificateAuthority] }
    static var allStringValues: [String] { ["CA_BUNDLE", "CERTIFICATE_AUTHORITY"] }
    static func fromString(_ value: String) -> CaBundleTypeEnum? { CaBundleTypeEnum(rawValue: value) }
}