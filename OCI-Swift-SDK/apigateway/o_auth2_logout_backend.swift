import Foundation

// MARK: - OAuth2LogoutBackend

public struct OAuth2LogoutBackend: Codable, Sendable {

    public var allowedPostLogoutUris: [String]?
    public var postLogoutState: String?

    private enum CodingKeys: String, CodingKey {
        case allowedPostLogoutUris, postLogoutState
    }

    public init(
                allowedPostLogoutUris: [String]? = nil,
                postLogoutState: String? = nil
    ) {
        self.allowedPostLogoutUris = allowedPostLogoutUris
        self.postLogoutState = postLogoutState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OAuth2LogoutBackend: CustomStringConvertible {
    public var description: String { "OAuth2LogoutBackend()" }
}