import Foundation

// MARK: - PasswordInVault

public struct PasswordInVault: Codable, Sendable {

    public var vaultSecretId: String?

    private enum CodingKeys: String, CodingKey {
        case vaultSecretId
    }

    public init(
                vaultSecretId: String? = nil
    ) {
        self.vaultSecretId = vaultSecretId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PasswordInVault: CustomStringConvertible {
    public var description: String { "PasswordInVault()" }
}