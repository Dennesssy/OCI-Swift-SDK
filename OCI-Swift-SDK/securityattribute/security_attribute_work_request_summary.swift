import Foundation

// MARK: - SecurityAttributeWorkRequestSummary

public struct SecurityAttributeWorkRequestSummary: Codable, Sendable {

    public var id: String?
    public var operationType: WorkRequestOperationTypeEnum
    public var status: WorkRequestStatusEnum
    public var compartmentId: String?
    public var resources: [WorkRequestResource]?
    public var timeAccepted: Date?
    public var timeStarted: Date?
    public var timeFinished: Date?
    public var percentComplete: Float?

    private enum CodingKeys: String, CodingKey {
        case id, operationType, status, compartmentId, resources, timeAccepted, timeStarted, timeFinished, percentComplete
    }

    public init(
                id: String? = nil,
                operationType: WorkRequestOperationTypeEnum,
                status: WorkRequestStatusEnum,
                compartmentId: String? = nil,
                resources: [WorkRequestResource]? = nil,
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
        self.timeAccepted = timeAccepted
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
        self.percentComplete = percentComplete
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SecurityAttributeWorkRequestSummary: CustomStringConvertible {
    public var description: String { "SecurityAttributeWorkRequestSummary()" }
}