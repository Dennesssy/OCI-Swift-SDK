import Foundation

// MARK: - LimitsIncreaseItemRequestSummary

public struct LimitsIncreaseItemRequestSummary: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var region: String?
    public var serviceName: String?
    public var limitName: String?
    public var value: Int64?
    public var currentValue: Int64?
    public var limitsIncreaseRequestId: String?
    public var timeCreated: Date?
    public var lifecycleState: LimitsIncreaseItemRequestLifecycleStateEnum
    public var scope: String?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, region, serviceName, limitName, value, currentValue, limitsIncreaseRequestId, timeCreated, lifecycleState, scope
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                region: String? = nil,
                serviceName: String? = nil,
                limitName: String? = nil,
                value: Int64? = nil,
                currentValue: Int64? = nil,
                limitsIncreaseRequestId: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: LimitsIncreaseItemRequestLifecycleStateEnum,
                scope: String? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.region = region
        self.serviceName = serviceName
        self.limitName = limitName
        self.value = value
        self.currentValue = currentValue
        self.limitsIncreaseRequestId = limitsIncreaseRequestId
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.scope = scope
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension LimitsIncreaseItemRequestSummary: CustomStringConvertible {
    public var description: String { "LimitsIncreaseItemRequestSummary()" }
}