import Foundation

// MARK: - IamWorkRequestSummary

public struct IamWorkRequestSummary: Codable, Sendable {

    public var id: String?
    public var operationType: IamWorkRequestSummaryOperationTypeEnum
    public var status: IamWorkRequestSummaryStatusEnum
    public var compartmentId: String?
    public var resources: [IamWorkRequestResource]?
    public var percentComplete: Float?
    public var timeAccepted: Date?
    public var timeStarted: Date?
    public var timeFinished: Date?

    private enum CodingKeys: String, CodingKey {
        case id, operationType, status, compartmentId, resources, percentComplete, timeAccepted, timeStarted, timeFinished
    }

    public init(
                id: String? = nil,
                operationType: IamWorkRequestSummaryOperationTypeEnum,
                status: IamWorkRequestSummaryStatusEnum,
                compartmentId: String? = nil,
                resources: [IamWorkRequestResource]? = nil,
                percentComplete: Float? = nil,
                timeAccepted: Date? = nil,
                timeStarted: Date? = nil,
                timeFinished: Date? = nil
    ) {
        self.id = id
        self.operationType = operationType
        self.status = status
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

extension IamWorkRequestSummary: CustomStringConvertible {
    public var description: String { "IamWorkRequestSummary()" }
}