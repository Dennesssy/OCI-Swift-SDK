import Foundation

// MARK: - MiddlewareBackupPatch

public struct MiddlewareBackupPatch: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var description: String?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, description
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                description: String? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.description = description
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
