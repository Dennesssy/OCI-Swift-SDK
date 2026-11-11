import Foundation

// MARK: - ServerCollection

public struct ServerCollection: Codable, Sendable {

    public var items: [ServerSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ServerSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ServerCollection: CustomStringConvertible {
    public var description: String { "ServerCollection()" }
}