import Foundation

// MARK: - VaultSecretPasswordDetails

public struct VaultSecretPasswordDetails: Codable, Sendable {

    public var secretId: String?

    private enum CodingKeys: String, CodingKey {
        case secretId
    }

    public init(
                secretId: String? = nil
    ) {
        self.secretId = secretId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension VaultSecretPasswordDetails: CustomStringConvertible {
    public var description: String { "VaultSecretPasswordDetails()" }
}