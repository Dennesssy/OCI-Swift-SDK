import Foundation

// MARK: - UpdateUsagePlanRequest

public struct UpdateUsagePlanRequest: Codable, Sendable {
    public var usagePlanId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var isLockOverride: Bool?
    public var updateUsagePlanDetails: UpdateUsagePlanDetails?

    private enum CodingKeys: String, CodingKey {
        case usagePlanId, ifMatch, opcRequestId, isLockOverride, updateUsagePlanDetails
    }

    public init(
                usagePlanId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                isLockOverride: Bool? = nil,
                updateUsagePlanDetails: UpdateUsagePlanDetails? = nil
    ) {
        self.usagePlanId = usagePlanId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.isLockOverride = isLockOverride
        self.updateUsagePlanDetails = updateUsagePlanDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateUsagePlanRequest: CustomStringConvertible {
    public var description: String { "UpdateUsagePlanRequest()" }
}

// MARK: - UpdateUsagePlanResponse

public struct UpdateUsagePlanResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateUsagePlanResponse: CustomStringConvertible {
    public var description: String { "UpdateUsagePlanResponse()" }
}