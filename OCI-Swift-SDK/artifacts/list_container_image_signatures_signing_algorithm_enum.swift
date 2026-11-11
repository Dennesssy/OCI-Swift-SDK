import Foundation

// MARK: - ListContainerImageSignaturesSigningAlgorithmEnum

public enum ListContainerImageSignaturesSigningAlgorithmEnum: String, Codable, Sendable {
    case _224RsaPkcsPss = "SHA_224_RSA_PKCS_PSS"
    case _256RsaPkcsPss = "SHA_256_RSA_PKCS_PSS"
    case _384RsaPkcsPss = "SHA_384_RSA_PKCS_PSS"
    case _512RsaPkcsPss = "SHA_512_RSA_PKCS_PSS"
}

public extension ListContainerImageSignaturesSigningAlgorithmEnum {
    static var allValues: [ListContainerImageSignaturesSigningAlgorithmEnum] { [._224RsaPkcsPss, ._256RsaPkcsPss, ._384RsaPkcsPss, ._512RsaPkcsPss] }
    static var allStringValues: [String] { ["SHA_224_RSA_PKCS_PSS", "SHA_256_RSA_PKCS_PSS", "SHA_384_RSA_PKCS_PSS", "SHA_512_RSA_PKCS_PSS"] }
    static func fromString(_ value: String) -> ListContainerImageSignaturesSigningAlgorithmEnum? { ListContainerImageSignaturesSigningAlgorithmEnum(rawValue: value) }
}