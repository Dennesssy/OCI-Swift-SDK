import Foundation

// MARK: - MonitorCollection

public struct MonitorCollection: Codable, Sendable {

    public var items: [MonitorSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [MonitorSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MonitorCollection: CustomStringConvertible {
    public var description: String { "MonitorCollection()" }
}