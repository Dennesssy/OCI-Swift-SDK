import Foundation
import OCICommon

// MARK: - TokenAuthenticationPolicy

public struct TokenAuthenticationPolicy: Codable, Sendable {

    public var validationPolicy: JSONValue
    public var isAnonymousAccessAllowed: Bool?
    public var tokenHeader: String?
    public var tokenQueryParam: String?
    public var tokenAuthScheme: String?
    public var maxClockSkewInSeconds: Float?
    public var validationFailurePolicy: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case validationPolicy, isAnonymousAccessAllowed, tokenHeader, tokenQueryParam, tokenAuthScheme, maxClockSkewInSeconds, validationFailurePolicy
    }

    public init(
                validationPolicy: JSONValue,
                isAnonymousAccessAllowed: Bool? = nil,
                tokenHeader: String? = nil,
                tokenQueryParam: String? = nil,
                tokenAuthScheme: String? = nil,
                maxClockSkewInSeconds: Float? = nil,
                validationFailurePolicy: JSONValue? = nil
    ) {
        self.validationPolicy = validationPolicy
        self.isAnonymousAccessAllowed = isAnonymousAccessAllowed
        self.tokenHeader = tokenHeader
        self.tokenQueryParam = tokenQueryParam
        self.tokenAuthScheme = tokenAuthScheme
        self.maxClockSkewInSeconds = maxClockSkewInSeconds
        self.validationFailurePolicy = validationFailurePolicy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension TokenAuthenticationPolicy: CustomStringConvertible {
    public var description: String { "TokenAuthenticationPolicy()" }
}