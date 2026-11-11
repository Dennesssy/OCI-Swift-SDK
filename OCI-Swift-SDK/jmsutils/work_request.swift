import Foundation

// MARK: - WorkRequest

public struct WorkRequest: Codable, Sendable {

    public var operationType: OperationTypeEnum
    public var status: OperationStatusEnum
    public var id: String?
    public var compartmentId: String?
    public var resources: [WorkRequestResource]
    public var percentComplete: Float?
    public var timeAccepted: Date?
    public var totalTaskCount: Int?
    public var completedTaskCount: Int?
    public var timeStarted: Date?
    public var timeFinished: Date?
    public var timeUpdated: Date?
    public var createdBy: Principal?

    private enum CodingKeys: String, CodingKey {
        case operationType, status, id, compartmentId, resources, percentComplete, timeAccepted, totalTaskCount, completedTaskCount, timeStarted, timeFinished, timeUpdated, createdBy
    }

    public init(
                operationType: OperationTypeEnum,
                status: OperationStatusEnum,
                id: String? = nil,
                compartmentId: String? = nil,
                resources: [WorkRequestResource],
                percentComplete: Float? = nil,
                timeAccepted: Date? = nil,
                totalTaskCount: Int? = nil,
                completedTaskCount: Int? = nil,
                timeStarted: Date? = nil,
                timeFinished: Date? = nil,
                timeUpdated: Date? = nil,
                createdBy: Principal? = nil
    ) {
        self.operationType = operationType
        self.status = status
        self.id = id
        self.compartmentId = compartmentId
        self.resources = resources
        self.percentComplete = percentComplete
        self.timeAccepted = timeAccepted
        self.totalTaskCount = totalTaskCount
        self.completedTaskCount = completedTaskCount
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
        self.timeUpdated = timeUpdated
        self.createdBy = createdBy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WorkRequest: CustomStringConvertible {
    public var description: String { "WorkRequest()" }
}