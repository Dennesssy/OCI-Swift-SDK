import Foundation

// MARK: - GetUsagePlanRequest

public struct GetUsagePlanRequest: Codable, Sendable {
    public var usagePlanId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case usagePlanId, opcRequestId
    }

    public init(
                usagePlanId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.usagePlanId = usagePlanId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetUsagePlanRequest: CustomStringConvertible {
    public var description: String { "GetUsagePlanRequest()" }
}

// MARK: - GetUsagePlanResponse

public struct GetUsagePlanResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var usagePlan: UsagePlan?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, usagePlan
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                usagePlan: UsagePlan? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.usagePlan = usagePlan
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetUsagePlanResponse: CustomStringConvertible {
    public var description: String { "GetUsagePlanResponse()" }
}