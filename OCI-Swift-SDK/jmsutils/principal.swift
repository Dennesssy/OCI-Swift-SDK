import Foundation

// MARK: - Principal

public struct Principal: Codable, Sendable {

    public var id: String?
    public var displayName: String?

    private enum CodingKeys: String, CodingKey {
        case id, displayName
    }

    public init(
                id: String? = nil,
                displayName: String? = nil
    ) {
        self.id = id
        self.displayName = displayName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Principal: CustomStringConvertible {
    public var description: String { "Principal()" }
}