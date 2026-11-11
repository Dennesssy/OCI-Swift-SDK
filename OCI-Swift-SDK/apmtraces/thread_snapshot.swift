import Foundation

// MARK: - ThreadSnapshot

public struct ThreadSnapshot: Codable, Sendable {

    public var timeStamp: Date?
    public var threadSnapshotDetails: [SnapshotDetail]?
    public var stackTrace: [StackTraceElement]?

    private enum CodingKeys: String, CodingKey {
        case timeStamp, threadSnapshotDetails, stackTrace
    }

    public init(
                timeStamp: Date? = nil,
                threadSnapshotDetails: [SnapshotDetail]? = nil,
                stackTrace: [StackTraceElement]? = nil
    ) {
        self.timeStamp = timeStamp
        self.threadSnapshotDetails = threadSnapshotDetails
        self.stackTrace = stackTrace
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ThreadSnapshot: CustomStringConvertible {
    public var description: String { "ThreadSnapshot()" }
}