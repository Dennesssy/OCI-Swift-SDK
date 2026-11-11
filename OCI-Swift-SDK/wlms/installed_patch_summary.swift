import Foundation

// MARK: - InstalledPatchSummary

public struct InstalledPatchSummary: Codable, Sendable {

    public var id: String?
    public var description: String?
    public var displayName: String?

    private enum CodingKeys: String, CodingKey {
        case id, description, displayName
    }

    public init(
                id: String? = nil,
                description: String? = nil,
                displayName: String? = nil
    ) {
        self.id = id
        self.description = description
        self.displayName = displayName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
