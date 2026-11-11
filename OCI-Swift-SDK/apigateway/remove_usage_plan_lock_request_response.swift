import Foundation

// MARK: - RemoveUsagePlanLockRequest

public struct RemoveUsagePlanLockRequest: Codable, Sendable {
    public var usagePlanId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var removeResourceLockDetails: RemoveResourceLockDetails?

    private enum CodingKeys: String, CodingKey {
        case usagePlanId, opcRequestId, ifMatch, removeResourceLockDetails
    }

    public init(
                usagePlanId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                removeResourceLockDetails: RemoveResourceLockDetails? = nil
    ) {
        self.usagePlanId = usagePlanId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.removeResourceLockDetails = removeResourceLockDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoveUsagePlanLockRequest: CustomStringConvertible {
    public var description: String { "RemoveUsagePlanLockRequest()" }
}

// MARK: - RemoveUsagePlanLockResponse

public struct RemoveUsagePlanLockResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var usagePlan: UsagePlan?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, usagePlan
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                usagePlan: UsagePlan? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.usagePlan = usagePlan
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoveUsagePlanLockResponse: CustomStringConvertible {
    public var description: String { "RemoveUsagePlanLockResponse()" }
}