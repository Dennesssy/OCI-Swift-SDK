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
    public var timeStarted: Date?
    public var timeFinished: Date?

    private enum CodingKeys: String, CodingKey {
        case operationType, status, id, compartmentId, resources, percentComplete, timeAccepted, timeStarted, timeFinished
    }

    public init(
                operationType: OperationTypeEnum,
                status: OperationStatusEnum,
                id: String? = nil,
                compartmentId: String? = nil,
                resources: [WorkRequestResource],
                percentComplete: Float? = nil,
                timeAccepted: Date? = nil,
                timeStarted: Date? = nil,
                timeFinished: Date? = nil
    ) {
        self.operationType = operationType
        self.status = status
        self.id = id
        self.compartmentId = compartmentId
        self.resources = resources
        self.percentComplete = percentComplete
        self.timeAccepted = timeAccepted
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WorkRequest: CustomStringConvertible {
    public var description: String { "WorkRequest()" }
}