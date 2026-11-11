import Foundation

// MARK: - CreateAuthTokenDetails

public struct CreateAuthTokenDetails: Codable, Sendable {

    public var description: String?

    private enum CodingKeys: String, CodingKey {
        case description
    }

    public init(
                description: String? = nil
    ) {
        self.description = description
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
