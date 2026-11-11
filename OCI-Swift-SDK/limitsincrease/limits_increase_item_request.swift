import Foundation

// MARK: - LimitsIncreaseItemRequest

public struct LimitsIncreaseItemRequest: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var region: String?
    public var serviceName: String?
    public var limitName: String?
    public var currentValue: Int64?
    public var value: Int64?
    public var limitsIncreaseRequestId: String?
    public var timeCreated: Date?
    public var lifecycleState: LimitsIncreaseItemRequestLifecycleStateEnum
    public var scope: String?
    public var timeResolution: Date?
    public var timeUpdated: Date?
    public var questionnaireResponse: [LimitsIncreaseItemQuestionResponse]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, region, serviceName, limitName, currentValue, value, limitsIncreaseRequestId, timeCreated, lifecycleState, scope, timeResolution, timeUpdated, questionnaireResponse
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                region: String? = nil,
                serviceName: String? = nil,
                limitName: String? = nil,
                currentValue: Int64? = nil,
                value: Int64? = nil,
                limitsIncreaseRequestId: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: LimitsIncreaseItemRequestLifecycleStateEnum,
                scope: String? = nil,
                timeResolution: Date? = nil,
                timeUpdated: Date? = nil,
                questionnaireResponse: [LimitsIncreaseItemQuestionResponse]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.region = region
        self.serviceName = serviceName
        self.limitName = limitName
        self.currentValue = currentValue
        self.value = value
        self.limitsIncreaseRequestId = limitsIncreaseRequestId
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.scope = scope
        self.timeResolution = timeResolution
        self.timeUpdated = timeUpdated
        self.questionnaireResponse = questionnaireResponse
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension LimitsIncreaseItemRequest: CustomStringConvertible {
    public var description: String { "LimitsIncreaseItemRequest()" }
}