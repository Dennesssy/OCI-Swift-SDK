import Foundation

// MARK: - MonitoredRegionCollection

public struct MonitoredRegionCollection: Codable, Sendable {

    public var items: [MonitoredRegionSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [MonitoredRegionSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MonitoredRegionCollection: CustomStringConvertible {
    public var description: String { "MonitoredRegionCollection()" }
}