import Foundation

// MARK: - CredentialPublicSynonymCollection

public struct CredentialPublicSynonymCollection: Codable, Sendable {

    public var items: [CredentialPublicSynonymSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [CredentialPublicSynonymSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CredentialPublicSynonymCollection: CustomStringConvertible {
    public var description: String { "CredentialPublicSynonymCollection()" }
}