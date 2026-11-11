import Foundation

// MARK: - CreateUsagePlanRequest

public struct CreateUsagePlanRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createUsagePlanDetails: CreateUsagePlanDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createUsagePlanDetails
    }

    public init(
                opcRequestId: String? = nil,
                createUsagePlanDetails: CreateUsagePlanDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createUsagePlanDetails = createUsagePlanDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateUsagePlanRequest: CustomStringConvertible {
    public var description: String { "CreateUsagePlanRequest()" }
}

// MARK: - CreateUsagePlanResponse

public struct CreateUsagePlanResponse: Codable, Sendable {
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var usagePlan: UsagePlan?

    private enum CodingKeys: String, CodingKey {
        case etag, opcWorkRequestId, opcRequestId, location, usagePlan
    }

    public init(
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                usagePlan: UsagePlan? = nil
    ) {
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.usagePlan = usagePlan
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateUsagePlanResponse: CustomStringConvertible {
    public var description: String { "CreateUsagePlanResponse()" }
}