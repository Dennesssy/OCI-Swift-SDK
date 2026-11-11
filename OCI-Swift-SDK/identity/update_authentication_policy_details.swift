import Foundation

// MARK: - UpdateAuthenticationPolicyDetails

public struct UpdateAuthenticationPolicyDetails: Codable, Sendable {

    public var passwordPolicy: PasswordPolicy?
    public var networkPolicy: NetworkPolicy?

    private enum CodingKeys: String, CodingKey {
        case passwordPolicy, networkPolicy
    }

    public init(
                passwordPolicy: PasswordPolicy? = nil,
                networkPolicy: NetworkPolicy? = nil
    ) {
        self.passwordPolicy = passwordPolicy
        self.networkPolicy = networkPolicy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateAuthenticationPolicyDetails: CustomStringConvertible {
    public var description: String { "UpdateAuthenticationPolicyDetails()" }
}