import Foundation

// MARK: - DeleteUsagePlanRequest

public struct DeleteUsagePlanRequest: Codable, Sendable {
    public var usagePlanId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var isLockOverride: Bool?

    private enum CodingKeys: String, CodingKey {
        case usagePlanId, ifMatch, opcRequestId, isLockOverride
    }

    public init(
                usagePlanId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                isLockOverride: Bool? = nil
    ) {
        self.usagePlanId = usagePlanId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.isLockOverride = isLockOverride
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteUsagePlanRequest: CustomStringConvertible {
    public var description: String { "DeleteUsagePlanRequest()" }
}

// MARK: - DeleteUsagePlanResponse

public struct DeleteUsagePlanResponse: Codable, Sendable {
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

extension DeleteUsagePlanResponse: CustomStringConvertible {
    public var description: String { "DeleteUsagePlanResponse()" }
}