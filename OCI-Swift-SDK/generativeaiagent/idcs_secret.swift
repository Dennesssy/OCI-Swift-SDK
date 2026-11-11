import Foundation

// MARK: - IdcsSecret

public struct IdcsSecret: Codable, Sendable {

    public var idcsUrl: String?
    public var clientId: String?
    public var vaultSecretId: String?
    public var scopeUrl: String?

    private enum CodingKeys: String, CodingKey {
        case idcsUrl, clientId, vaultSecretId, scopeUrl
    }

    public init(
                idcsUrl: String? = nil,
                clientId: String? = nil,
                vaultSecretId: String? = nil,
                scopeUrl: String? = nil
    ) {
        self.idcsUrl = idcsUrl
        self.clientId = clientId
        self.vaultSecretId = vaultSecretId
        self.scopeUrl = scopeUrl
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension IdcsSecret: CustomStringConvertible {
    public var description: String { "IdcsSecret()" }
}