import Foundation
import OCICommon

// MARK: - JwtAuthenticationPolicy

public struct JwtAuthenticationPolicy: Codable, Sendable {

    public var issuers: [String]
    public var audiences: [String]
    public var publicKeys: JSONValue
    public var isAnonymousAccessAllowed: Bool?
    public var tokenHeader: String?
    public var tokenQueryParam: String?
    public var tokenAuthScheme: String?
    public var maxClockSkewInSeconds: Float?
    public var verifyClaims: [JsonWebTokenClaim]?

    private enum CodingKeys: String, CodingKey {
        case issuers, audiences, publicKeys, isAnonymousAccessAllowed, tokenHeader, tokenQueryParam, tokenAuthScheme, maxClockSkewInSeconds, verifyClaims
    }

    public init(
                issuers: [String],
                audiences: [String],
                publicKeys: JSONValue,
                isAnonymousAccessAllowed: Bool? = nil,
                tokenHeader: String? = nil,
                tokenQueryParam: String? = nil,
                tokenAuthScheme: String? = nil,
                maxClockSkewInSeconds: Float? = nil,
                verifyClaims: [JsonWebTokenClaim]? = nil
    ) {
        self.issuers = issuers
        self.audiences = audiences
        self.publicKeys = publicKeys
        self.isAnonymousAccessAllowed = isAnonymousAccessAllowed
        self.tokenHeader = tokenHeader
        self.tokenQueryParam = tokenQueryParam
        self.tokenAuthScheme = tokenAuthScheme
        self.maxClockSkewInSeconds = maxClockSkewInSeconds
        self.verifyClaims = verifyClaims
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension JwtAuthenticationPolicy: CustomStringConvertible {
    public var description: String { "JwtAuthenticationPolicy()" }
}