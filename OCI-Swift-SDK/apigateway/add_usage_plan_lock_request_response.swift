import Foundation

// MARK: - AddUsagePlanLockRequest

public struct AddUsagePlanLockRequest: Codable, Sendable {
    public var usagePlanId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var addResourceLockDetails: AddResourceLockDetails?

    private enum CodingKeys: String, CodingKey {
        case usagePlanId, opcRequestId, ifMatch, addResourceLockDetails
    }

    public init(
                usagePlanId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                addResourceLockDetails: AddResourceLockDetails? = nil
    ) {
        self.usagePlanId = usagePlanId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.addResourceLockDetails = addResourceLockDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AddUsagePlanLockRequest: CustomStringConvertible {
    public var description: String { "AddUsagePlanLockRequest()" }
}

// MARK: - AddUsagePlanLockResponse

public struct AddUsagePlanLockResponse: Codable, Sendable {
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

extension AddUsagePlanLockResponse: CustomStringConvertible {
    public var description: String { "AddUsagePlanLockResponse()" }
}