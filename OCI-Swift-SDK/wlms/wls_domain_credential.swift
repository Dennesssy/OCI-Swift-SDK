import Foundation

// MARK: - WlsDomainCredential

public struct WlsDomainCredential: Codable, Sendable {

    public var type: String?
    public var strategy: WlsDomainCredentialStrategyEnum?
    public var userSecretId: String?
    public var passwordSecretId: String?

    private enum CodingKeys: String, CodingKey {
        case type, strategy, userSecretId, passwordSecretId
    }

    public init(
                type: String? = nil,
                strategy: WlsDomainCredentialStrategyEnum? = nil,
                userSecretId: String? = nil,
                passwordSecretId: String? = nil
    ) {
        self.type = type
        self.strategy = strategy
        self.userSecretId = userSecretId
        self.passwordSecretId = passwordSecretId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WlsDomainCredential: CustomStringConvertible {
    public var description: String { "WlsDomainCredential()" }
}