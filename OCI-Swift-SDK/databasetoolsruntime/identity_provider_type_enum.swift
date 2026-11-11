import Foundation

// MARK: - IdentityProviderTypeEnum

public enum IdentityProviderTypeEnum: String, Codable, Sendable {
    case ociIam = "OCI_IAM"
    case azureAd = "AZURE_AD"
    case none = "NONE"
}

public extension IdentityProviderTypeEnum {
    static var allValues: [IdentityProviderTypeEnum] { [.ociIam, .azureAd, .none] }
    static var allStringValues: [String] { ["OCI_IAM", "AZURE_AD", "NONE"] }
    static func fromString(_ value: String) -> IdentityProviderTypeEnum? { IdentityProviderTypeEnum(rawValue: value) }
}