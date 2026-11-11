import Foundation
import OCICommon

// MARK: - RepositoryMirrorRecordSummary

public struct RepositoryMirrorRecordSummary: Codable, Sendable {

    public var mirrorStatus: RepositoryMirrorRecordSummaryMirrorStatusEnum
    public var workRequestId: String?
    public var timeEnqueued: Date?
    public var timeStarted: Date?
    public var timeCompleted: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case mirrorStatus, workRequestId, timeEnqueued, timeStarted, timeCompleted, freeformTags, definedTags, systemTags
    }

    public init(
                mirrorStatus: RepositoryMirrorRecordSummaryMirrorStatusEnum,
                workRequestId: String? = nil,
                timeEnqueued: Date? = nil,
                timeStarted: Date? = nil,
                timeCompleted: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.mirrorStatus = mirrorStatus
        self.workRequestId = workRequestId
        self.timeEnqueued = timeEnqueued
        self.timeStarted = timeStarted
        self.timeCompleted = timeCompleted
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RepositoryMirrorRecordSummary: CustomStringConvertible {
    public var description: String { "RepositoryMirrorRecordSummary()" }
}