import Foundation

// MARK: - CreateDbCredentialDetails

public struct CreateDbCredentialDetails: Codable, Sendable {

    public var password: String?
    public var description: String?

    private enum CodingKeys: String, CodingKey {
        case password, description
    }

    public init(
                password: String? = nil,
                description: String? = nil
    ) {
        self.password = password
        self.description = description
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
