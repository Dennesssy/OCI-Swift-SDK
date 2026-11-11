import Foundation

// MARK: - WorkRequestSummary

public struct WorkRequestSummary: Codable, Sendable {

    public var operationType: WorkRequestOperationTypeEnum
    public var status: WorkRequestStatusEnum
    public var workRequestId: String?
    public var compartmentId: String?
    public var percentComplete: Float?
    public var timeAccepted: Date?
    public var timeStarted: Date?
    public var timeFinished: Date?

    private enum CodingKeys: String, CodingKey {
        case operationType, status, workRequestId, compartmentId, percentComplete, timeAccepted, timeStarted, timeFinished
    }

    public init(
                operationType: WorkRequestOperationTypeEnum,
                status: WorkRequestStatusEnum,
                workRequestId: String? = nil,
                compartmentId: String? = nil,
                percentComplete: Float? = nil,
                timeAccepted: Date? = nil,
                timeStarted: Date? = nil,
                timeFinished: Date? = nil
    ) {
        self.operationType = operationType
        self.status = status
        self.workRequestId = workRequestId
        self.compartmentId = compartmentId
        self.percentComplete = percentComplete
        self.timeAccepted = timeAccepted
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WorkRequestSummary: CustomStringConvertible {
    public var description: String { "WorkRequestSummary()" }
}