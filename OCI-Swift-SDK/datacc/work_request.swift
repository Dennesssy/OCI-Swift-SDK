import Foundation
import OCICommon

// MARK: - WorkRequest

public struct WorkRequest: Codable, Sendable {

    public var operationType: OperationTypeEnum
    public var status: OperationStatusEnum
    public var id: String?
    public var compartmentId: String?
    public var resources: [WorkRequestResource]
    public var percentComplete: Float?
    public var timeAccepted: Date?
    public var opcRequestId: String?
    public var timeStarted: Date?
    public var timeFinished: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case operationType, status, id, compartmentId, resources, percentComplete, timeAccepted, opcRequestId, timeStarted, timeFinished, freeformTags, definedTags, systemTags
    }

    public init(
                operationType: OperationTypeEnum,
                status: OperationStatusEnum,
                id: String? = nil,
                compartmentId: String? = nil,
                resources: [WorkRequestResource],
                percentComplete: Float? = nil,
                timeAccepted: Date? = nil,
                opcRequestId: String? = nil,
                timeStarted: Date? = nil,
                timeFinished: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.operationType = operationType
        self.status = status
        self.id = id
        self.compartmentId = compartmentId
        self.resources = resources
        self.percentComplete = percentComplete
        self.timeAccepted = timeAccepted
        self.opcRequestId = opcRequestId
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WorkRequest: CustomStringConvertible {
    public var description: String { "WorkRequest()" }
}