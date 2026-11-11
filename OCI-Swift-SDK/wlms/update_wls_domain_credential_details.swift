import Foundation

// MARK: - UpdateWlsDomainCredentialDetails

public struct UpdateWlsDomainCredentialDetails: Codable, Sendable {

    public var strategy: WlsDomainCredentialStrategyEnum?
    public var userSecretId: String?
    public var passwordSecretId: String?

    private enum CodingKeys: String, CodingKey {
        case strategy, userSecretId, passwordSecretId
    }

    public init(
                strategy: WlsDomainCredentialStrategyEnum? = nil,
                userSecretId: String? = nil,
                passwordSecretId: String? = nil
    ) {
        self.strategy = strategy
        self.userSecretId = userSecretId
        self.passwordSecretId = passwordSecretId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateWlsDomainCredentialDetails: CustomStringConvertible {
    public var description: String { "UpdateWlsDomainCredentialDetails()" }
}