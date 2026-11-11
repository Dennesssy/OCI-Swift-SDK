import Foundation
import OCICommon

// MARK: - OAuth2ResponseValidationFailurePolicy

public struct OAuth2ResponseValidationFailurePolicy: Codable, Sendable {

    public var clientDetails: JSONValue
    public var sourceUriDetails: JSONValue
    public var scopes: [String]
    public var maxExpiryDurationInHours: Int?
    public var useCookiesForSession: Bool?
    public var useCookiesForIntermediateSteps: Bool?
    public var usePkce: Bool?
    public var fallbackRedirectPath: String?
    public var logoutPath: String?
    public var loginPath: String?
    public var responseType: OAuth2ResponseValidationFailurePolicyResponseTypeEnum

    private enum CodingKeys: String, CodingKey {
        case clientDetails, sourceUriDetails, scopes, maxExpiryDurationInHours, useCookiesForSession, useCookiesForIntermediateSteps, usePkce, fallbackRedirectPath, logoutPath, loginPath, responseType
    }

    public init(
                clientDetails: JSONValue,
                sourceUriDetails: JSONValue,
                scopes: [String],
                maxExpiryDurationInHours: Int? = nil,
                useCookiesForSession: Bool? = nil,
                useCookiesForIntermediateSteps: Bool? = nil,
                usePkce: Bool? = nil,
                fallbackRedirectPath: String? = nil,
                logoutPath: String? = nil,
                loginPath: String? = nil,
                responseType: OAuth2ResponseValidationFailurePolicyResponseTypeEnum
    ) {
        self.clientDetails = clientDetails
        self.sourceUriDetails = sourceUriDetails
        self.scopes = scopes
        self.maxExpiryDurationInHours = maxExpiryDurationInHours
        self.useCookiesForSession = useCookiesForSession
        self.useCookiesForIntermediateSteps = useCookiesForIntermediateSteps
        self.usePkce = usePkce
        self.fallbackRedirectPath = fallbackRedirectPath
        self.logoutPath = logoutPath
        self.loginPath = loginPath
        self.responseType = responseType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OAuth2ResponseValidationFailurePolicy: CustomStringConvertible {
    public var description: String { "OAuth2ResponseValidationFailurePolicy()" }
}