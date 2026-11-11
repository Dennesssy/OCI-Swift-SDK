import Foundation

// MARK: - AggregatedSnapshot

public struct AggregatedSnapshot: Codable, Sendable {

    public var details: [SnapshotDetail]
    public var aggregatedStackTraces: [AggregatedStackTrace]

    private enum CodingKeys: String, CodingKey {
        case details, aggregatedStackTraces
    }

    public init(
                details: [SnapshotDetail],
                aggregatedStackTraces: [AggregatedStackTrace]
    ) {
        self.details = details
        self.aggregatedStackTraces = aggregatedStackTraces
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AggregatedSnapshot: CustomStringConvertible {
    public var description: String { "AggregatedSnapshot()" }
}