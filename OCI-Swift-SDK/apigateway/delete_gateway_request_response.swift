import Foundation

// MARK: - DeleteGatewayRequest

public struct DeleteGatewayRequest: Codable, Sendable {
    public var gatewayId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var isLockOverride: Bool?

    private enum CodingKeys: String, CodingKey {
        case gatewayId, ifMatch, opcRequestId, isLockOverride
    }

    public init(
                gatewayId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                isLockOverride: Bool? = nil
    ) {
        self.gatewayId = gatewayId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.isLockOverride = isLockOverride
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteGatewayRequest: CustomStringConvertible {
    public var description: String { "DeleteGatewayRequest()" }
}

// MARK: - DeleteGatewayResponse

public struct DeleteGatewayResponse: Codable, Sendable {
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

extension DeleteGatewayResponse: CustomStringConvertible {
    public var description: String { "DeleteGatewayResponse()" }
}