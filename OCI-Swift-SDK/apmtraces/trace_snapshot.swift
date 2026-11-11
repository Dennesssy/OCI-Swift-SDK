import Foundation

// MARK: - TraceSnapshot

public struct TraceSnapshot: Codable, Sendable {

    public var key: String?
    public var spanSnapshots: [SpanSnapshot]
    public var timeStarted: Date?
    public var timeEnded: Date?
    public var traceSnapshotDetails: [SnapshotDetail]?

    private enum CodingKeys: String, CodingKey {
        case key, spanSnapshots, timeStarted, timeEnded, traceSnapshotDetails
    }

    public init(
                key: String? = nil,
                spanSnapshots: [SpanSnapshot],
                timeStarted: Date? = nil,
                timeEnded: Date? = nil,
                traceSnapshotDetails: [SnapshotDetail]? = nil
    ) {
        self.key = key
        self.spanSnapshots = spanSnapshots
        self.timeStarted = timeStarted
        self.timeEnded = timeEnded
        self.traceSnapshotDetails = traceSnapshotDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension TraceSnapshot: CustomStringConvertible {
    public var description: String { "TraceSnapshot()" }
}