import Foundation

// MARK: - AccessToken

public struct AccessToken: Codable, Sendable {

    public var token: String?
    public var accessToken: String?
    public var scope: String?
    public var expiresIn: Int?

    private enum CodingKeys: String, CodingKey {
        case token, accessToken, scope, expiresIn
    }

    public init(
                token: String? = nil,
                accessToken: String? = nil,
                scope: String? = nil,
                expiresIn: Int? = nil
    ) {
        self.token = token
        self.accessToken = accessToken
        self.scope = scope
        self.expiresIn = expiresIn
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AccessToken: CustomStringConvertible {
    public var description: String { "AccessToken()" }
}