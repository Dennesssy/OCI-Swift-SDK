import Foundation

// MARK: - UpdateGatewayRequest

public struct UpdateGatewayRequest: Codable, Sendable {
    public var gatewayId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var isLockOverride: Bool?
    public var updateGatewayDetails: UpdateGatewayDetails?

    private enum CodingKeys: String, CodingKey {
        case gatewayId, ifMatch, opcRequestId, isLockOverride, updateGatewayDetails
    }

    public init(
                gatewayId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                isLockOverride: Bool? = nil,
                updateGatewayDetails: UpdateGatewayDetails? = nil
    ) {
        self.gatewayId = gatewayId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.isLockOverride = isLockOverride
        self.updateGatewayDetails = updateGatewayDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateGatewayRequest: CustomStringConvertible {
    public var description: String { "UpdateGatewayRequest()" }
}

// MARK: - UpdateGatewayResponse

public struct UpdateGatewayResponse: Codable, Sendable {
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

extension UpdateGatewayResponse: CustomStringConvertible {
    public var description: String { "UpdateGatewayResponse()" }
}