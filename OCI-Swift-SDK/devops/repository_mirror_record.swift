import Foundation

// MARK: - RepositoryMirrorRecord

public struct RepositoryMirrorRecord: Codable, Sendable {

    public var mirrorStatus: RepositoryMirrorRecordMirrorStatusEnum
    public var workRequestId: String?
    public var timeEnqueued: Date?
    public var timeStarted: Date?
    public var timeEnded: Date?

    private enum CodingKeys: String, CodingKey {
        case mirrorStatus, workRequestId, timeEnqueued, timeStarted, timeEnded
    }

    public init(
                mirrorStatus: RepositoryMirrorRecordMirrorStatusEnum,
                workRequestId: String? = nil,
                timeEnqueued: Date? = nil,
                timeStarted: Date? = nil,
                timeEnded: Date? = nil
    ) {
        self.mirrorStatus = mirrorStatus
        self.workRequestId = workRequestId
        self.timeEnqueued = timeEnqueued
        self.timeStarted = timeStarted
        self.timeEnded = timeEnded
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RepositoryMirrorRecord: CustomStringConvertible {
    public var description: String { "RepositoryMirrorRecord()" }
}