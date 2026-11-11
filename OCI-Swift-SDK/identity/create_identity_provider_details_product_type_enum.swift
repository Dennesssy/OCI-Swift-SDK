import Foundation

// MARK: - CreateIdentityProviderDetailsProductTypeEnum

public enum CreateIdentityProviderDetailsProductTypeEnum: String, Codable, Sendable {
    case idcs = "IDCS"
    case adfs = "ADFS"
}

public extension CreateIdentityProviderDetailsProductTypeEnum {
    static var allValues: [CreateIdentityProviderDetailsProductTypeEnum] { [.idcs, .adfs] }
    static var allStringValues: [String] { ["IDCS", "ADFS"] }
    static func fromString(_ value: String) -> CreateIdentityProviderDetailsProductTypeEnum? { CreateIdentityProviderDetailsProductTypeEnum(rawValue: value) }
}