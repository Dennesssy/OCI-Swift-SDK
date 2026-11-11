import Foundation

// MARK: - SpanSnapshot

public struct SpanSnapshot: Codable, Sendable {

    public var key: String?
    public var timeStarted: Date?
    public var timeEnded: Date?
    public var spanName: String?
    public var spanSnapshotDetails: [SnapshotDetail]?
    public var threadSnapshots: [ThreadSnapshot]?
    public var children: [SpanSnapshot]?

    private enum CodingKeys: String, CodingKey {
        case key, timeStarted, timeEnded, spanName, spanSnapshotDetails, threadSnapshots, children
    }

    public init(
                key: String? = nil,
                timeStarted: Date? = nil,
                timeEnded: Date? = nil,
                spanName: String? = nil,
                spanSnapshotDetails: [SnapshotDetail]? = nil,
                threadSnapshots: [ThreadSnapshot]? = nil,
                children: [SpanSnapshot]? = nil
    ) {
        self.key = key
        self.timeStarted = timeStarted
        self.timeEnded = timeEnded
        self.spanName = spanName
        self.spanSnapshotDetails = spanSnapshotDetails
        self.threadSnapshots = threadSnapshots
        self.children = children
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SpanSnapshot: CustomStringConvertible {
    public var description: String { "SpanSnapshot()" }
}