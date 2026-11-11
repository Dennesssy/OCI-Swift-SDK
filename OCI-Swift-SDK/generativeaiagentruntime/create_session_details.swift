import Foundation

// MARK: - CreateSessionDetails

public struct CreateSessionDetails: Codable, Sendable {

    public var displayName: String?
    public var description: String?

    private enum CodingKeys: String, CodingKey {
        case displayName, description
    }

    public init(
                displayName: String? = nil,
                description: String? = nil
    ) {
        self.displayName = displayName
        self.description = description
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
