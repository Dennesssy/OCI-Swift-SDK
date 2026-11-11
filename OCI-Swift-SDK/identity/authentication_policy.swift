import Foundation

// MARK: - AuthenticationPolicy

public struct AuthenticationPolicy: Codable, Sendable {

    public var passwordPolicy: PasswordPolicy?
    public var compartmentId: String?
    public var networkPolicy: NetworkPolicy?

    private enum CodingKeys: String, CodingKey {
        case passwordPolicy, compartmentId, networkPolicy
    }

    public init(
                passwordPolicy: PasswordPolicy? = nil,
                compartmentId: String? = nil,
                networkPolicy: NetworkPolicy? = nil
    ) {
        self.passwordPolicy = passwordPolicy
        self.compartmentId = compartmentId
        self.networkPolicy = networkPolicy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AuthenticationPolicy: CustomStringConvertible {
    public var description: String { "AuthenticationPolicy()" }
}