import Foundation
import OCICommon

// MARK: - TokenAuthenticationRemoteDiscoveryValidationPolicy

public struct TokenAuthenticationRemoteDiscoveryValidationPolicy: Codable, Sendable {

    public var clientDetails: JSONValue
    public var sourceUriDetails: JSONValue
    public var additionalValidationPolicy: AdditionalValidationPolicy?
    public var isSslVerifyDisabled: Bool?
    public var maxCacheDurationInHours: Int?

    private enum CodingKeys: String, CodingKey {
        case clientDetails, sourceUriDetails, additionalValidationPolicy, isSslVerifyDisabled, maxCacheDurationInHours
    }

    public init(
                clientDetails: JSONValue,
                sourceUriDetails: JSONValue,
                additionalValidationPolicy: AdditionalValidationPolicy? = nil,
                isSslVerifyDisabled: Bool? = nil,
                maxCacheDurationInHours: Int? = nil
    ) {
        self.clientDetails = clientDetails
        self.sourceUriDetails = sourceUriDetails
        self.additionalValidationPolicy = additionalValidationPolicy
        self.isSslVerifyDisabled = isSslVerifyDisabled
        self.maxCacheDurationInHours = maxCacheDurationInHours
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension TokenAuthenticationRemoteDiscoveryValidationPolicy: CustomStringConvertible {
    public var description: String { "TokenAuthenticationRemoteDiscoveryValidationPolicy()" }
}