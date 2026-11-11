import Foundation

// MARK: - TokenAuthenticationRemoteJwksValidationPolicy

public struct TokenAuthenticationRemoteJwksValidationPolicy: Codable, Sendable {

    public var uri: String?
    public var additionalValidationPolicy: AdditionalValidationPolicy?
    public var isSslVerifyDisabled: Bool?
    public var maxCacheDurationInHours: Int?

    private enum CodingKeys: String, CodingKey {
        case uri, additionalValidationPolicy, isSslVerifyDisabled, maxCacheDurationInHours
    }

    public init(
                uri: String? = nil,
                additionalValidationPolicy: AdditionalValidationPolicy? = nil,
                isSslVerifyDisabled: Bool? = nil,
                maxCacheDurationInHours: Int? = nil
    ) {
        self.uri = uri
        self.additionalValidationPolicy = additionalValidationPolicy
        self.isSslVerifyDisabled = isSslVerifyDisabled
        self.maxCacheDurationInHours = maxCacheDurationInHours
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension TokenAuthenticationRemoteJwksValidationPolicy: CustomStringConvertible {
    public var description: String { "TokenAuthenticationRemoteJwksValidationPolicy()" }
}