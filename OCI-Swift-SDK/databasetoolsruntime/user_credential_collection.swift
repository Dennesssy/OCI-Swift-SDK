import Foundation

// MARK: - UserCredentialCollection

public struct UserCredentialCollection: Codable, Sendable {

    public var items: [UserCredentialSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [UserCredentialSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UserCredentialCollection: CustomStringConvertible {
    public var description: String { "UserCredentialCollection()" }
}