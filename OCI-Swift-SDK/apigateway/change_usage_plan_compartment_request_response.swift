import Foundation

// MARK: - ChangeUsagePlanCompartmentRequest

public struct ChangeUsagePlanCompartmentRequest: Codable, Sendable {
    public var usagePlanId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var isLockOverride: Bool?
    public var changeUsagePlanCompartmentDetails: ChangeUsagePlanCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case usagePlanId, ifMatch, opcRequestId, isLockOverride, changeUsagePlanCompartmentDetails
    }

    public init(
                usagePlanId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                isLockOverride: Bool? = nil,
                changeUsagePlanCompartmentDetails: ChangeUsagePlanCompartmentDetails? = nil
    ) {
        self.usagePlanId = usagePlanId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.isLockOverride = isLockOverride
        self.changeUsagePlanCompartmentDetails = changeUsagePlanCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeUsagePlanCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeUsagePlanCompartmentRequest()" }
}

// MARK: - ChangeUsagePlanCompartmentResponse

public struct ChangeUsagePlanCompartmentResponse: Codable, Sendable {
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

extension ChangeUsagePlanCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeUsagePlanCompartmentResponse()" }
}