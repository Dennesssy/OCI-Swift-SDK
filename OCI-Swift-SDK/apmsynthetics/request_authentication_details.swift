import Foundation

// MARK: - RequestAuthenticationDetails

public struct RequestAuthenticationDetails: Codable, Sendable {

    public var oauthScheme: OAuthSchemesEnum?
    public var authUserName: String?
    public var authUserPassword: String?
    public var authToken: String?
    public var authUrl: String?
    public var authHeaders: [Header]?
    public var authRequestMethod: RequestMethodsEnum?
    public var authRequestPostBody: String?

    private enum CodingKeys: String, CodingKey {
        case oauthScheme, authUserName, authUserPassword, authToken, authUrl, authHeaders, authRequestMethod, authRequestPostBody
    }

    public init(
                oauthScheme: OAuthSchemesEnum? = nil,
                authUserName: String? = nil,
                authUserPassword: String? = nil,
                authToken: String? = nil,
                authUrl: String? = nil,
                authHeaders: [Header]? = nil,
                authRequestMethod: RequestMethodsEnum? = nil,
                authRequestPostBody: String? = nil
    ) {
        self.oauthScheme = oauthScheme
        self.authUserName = authUserName
        self.authUserPassword = authUserPassword
        self.authToken = authToken
        self.authUrl = authUrl
        self.authHeaders = authHeaders
        self.authRequestMethod = authRequestMethod
        self.authRequestPostBody = authRequestPostBody
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RequestAuthenticationDetails: CustomStringConvertible {
    public var description: String { "RequestAuthenticationDetails()" }
}