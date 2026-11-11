import Foundation

// MARK: - Region

public struct Region: Codable, Sendable {

    public var key: String?
    public var name: String?

    private enum CodingKeys: String, CodingKey {
        case key, name
    }

    public init(
                key: String? = nil,
                name: String? = nil
    ) {
        self.key = key
        self.name = name
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Region: CustomStringConvertible {
    public var description: String { "Region()" }
}