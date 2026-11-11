import Foundation

// MARK: - WorkRequestSummary

public struct WorkRequestSummary: Codable, Sendable {

    public var id: String?
    public var operationType: WorkRequestSummaryOperationTypeEnum
    public var status: WorkRequestSummaryStatusEnum
    public var compartmentId: String?
    public var resources: [WorkRequestResource]?
    public var errors: [WorkRequestError]?
    public var timeAccepted: Date?
    public var timeStarted: Date?
    public var timeFinished: Date?
    public var percentComplete: Float?

    private enum CodingKeys: String, CodingKey {
        case id, operationType, status, compartmentId, resources, errors, timeAccepted, timeStarted, timeFinished, percentComplete
    }

    public init(
                id: String? = nil,
                operationType: WorkRequestSummaryOperationTypeEnum,
                status: WorkRequestSummaryStatusEnum,
                compartmentId: String? = nil,
                resources: [WorkRequestResource]? = nil,
                errors: [WorkRequestError]? = nil,
                timeAccepted: Date? = nil,
                timeStarted: Date? = nil,
                timeFinished: Date? = nil,
                percentComplete: Float? = nil
    ) {
        self.id = id
        self.operationType = operationType
        self.status = status
        self.compartmentId = compartmentId
        self.resources = resources
        self.errors = errors
        self.timeAccepted = timeAccepted
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
        self.percentComplete = percentComplete
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WorkRequestSummary: CustomStringConvertible {
    public var description: String { "WorkRequestSummary()" }
}