import Foundation
import OCICommon

// MARK: - WorkItemSummary

public struct WorkItemSummary: Codable, Sendable {

    public var id: String?
    public var workRequestId: String?
    public var status: WorkItemStatusEnum
    public var details: JSONValue
    public var retryCount: Int?
    public var timeLastUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case id, workRequestId, status, details, retryCount, timeLastUpdated
    }

    public init(
                id: String? = nil,
                workRequestId: String? = nil,
                status: WorkItemStatusEnum,
                details: JSONValue,
                retryCount: Int? = nil,
                timeLastUpdated: Date? = nil
    ) {
        self.id = id
        self.workRequestId = workRequestId
        self.status = status
        self.details = details
        self.retryCount = retryCount
        self.timeLastUpdated = timeLastUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WorkItemSummary: CustomStringConvertible {
    public var description: String { "WorkItemSummary()" }
}