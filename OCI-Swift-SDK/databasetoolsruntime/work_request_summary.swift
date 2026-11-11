import Foundation

// MARK: - WorkRequestSummary

public struct WorkRequestSummary: Codable, Sendable {

    public var operationType: OperationTypeEnum
    public var status: OperationStatusEnum
    public var id: String?
    public var compartmentId: String?
    public var percentComplete: Float?
    public var timeAccepted: Date?
    public var displayName: String?
    public var createdByPrincipalId: String?
    public var createdByPrincipalDomainId: String?
    public var resources: [WorkRequestResource]?
    public var timeStarted: Date?
    public var timeFinished: Date?
    public var timeUpdated: Date?
    public var timeScheduled: Date?

    private enum CodingKeys: String, CodingKey {
        case operationType, status, id, compartmentId, percentComplete, timeAccepted, displayName, createdByPrincipalId, createdByPrincipalDomainId, resources, timeStarted, timeFinished, timeUpdated, timeScheduled
    }

    public init(
                operationType: OperationTypeEnum,
                status: OperationStatusEnum,
                id: String? = nil,
                compartmentId: String? = nil,
                percentComplete: Float? = nil,
                timeAccepted: Date? = nil,
                displayName: String? = nil,
                createdByPrincipalId: String? = nil,
                createdByPrincipalDomainId: String? = nil,
                resources: [WorkRequestResource]? = nil,
                timeStarted: Date? = nil,
                timeFinished: Date? = nil,
                timeUpdated: Date? = nil,
                timeScheduled: Date? = nil
    ) {
        self.operationType = operationType
        self.status = status
        self.id = id
        self.compartmentId = compartmentId
        self.percentComplete = percentComplete
        self.timeAccepted = timeAccepted
        self.displayName = displayName
        self.createdByPrincipalId = createdByPrincipalId
        self.createdByPrincipalDomainId = createdByPrincipalDomainId
        self.resources = resources
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
        self.timeUpdated = timeUpdated
        self.timeScheduled = timeScheduled
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WorkRequestSummary: CustomStringConvertible {
    public var description: String { "WorkRequestSummary()" }
}