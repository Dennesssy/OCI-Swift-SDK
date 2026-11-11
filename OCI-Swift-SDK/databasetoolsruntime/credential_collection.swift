import Foundation

// MARK: - CredentialCollection

public struct CredentialCollection: Codable, Sendable {

    public var items: [CredentialSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [CredentialSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CredentialCollection: CustomStringConvertible {
    public var description: String { "CredentialCollection()" }
}