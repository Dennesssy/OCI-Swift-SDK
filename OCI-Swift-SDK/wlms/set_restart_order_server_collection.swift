import Foundation

// MARK: - SetRestartOrderServerCollection

public struct SetRestartOrderServerCollection: Codable, Sendable {

    public var items: [SetRestartOrderServerSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [SetRestartOrderServerSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SetRestartOrderServerCollection: CustomStringConvertible {
    public var description: String { "SetRestartOrderServerCollection()" }
}