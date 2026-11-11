import Foundation

// MARK: - ChangeGatewayCompartmentRequest

public struct ChangeGatewayCompartmentRequest: Codable, Sendable {
    public var gatewayId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var isLockOverride: Bool?
    public var changeGatewayCompartmentDetails: ChangeGatewayCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case gatewayId, ifMatch, opcRequestId, isLockOverride, changeGatewayCompartmentDetails
    }

    public init(
                gatewayId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                isLockOverride: Bool? = nil,
                changeGatewayCompartmentDetails: ChangeGatewayCompartmentDetails? = nil
    ) {
        self.gatewayId = gatewayId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.isLockOverride = isLockOverride
        self.changeGatewayCompartmentDetails = changeGatewayCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeGatewayCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeGatewayCompartmentRequest()" }
}

// MARK: - ChangeGatewayCompartmentResponse

public struct ChangeGatewayCompartmentResponse: Codable, Sendable {
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

extension ChangeGatewayCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeGatewayCompartmentResponse()" }
}