import Foundation

// MARK: - RemoveGatewayLockRequest

public struct RemoveGatewayLockRequest: Codable, Sendable {
    public var gatewayId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var removeResourceLockDetails: RemoveResourceLockDetails?

    private enum CodingKeys: String, CodingKey {
        case gatewayId, opcRequestId, ifMatch, removeResourceLockDetails
    }

    public init(
                gatewayId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                removeResourceLockDetails: RemoveResourceLockDetails? = nil
    ) {
        self.gatewayId = gatewayId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.removeResourceLockDetails = removeResourceLockDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoveGatewayLockRequest: CustomStringConvertible {
    public var description: String { "RemoveGatewayLockRequest()" }
}

// MARK: - RemoveGatewayLockResponse

public struct RemoveGatewayLockResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var gateway: Gateway?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, gateway
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                gateway: Gateway? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.gateway = gateway
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoveGatewayLockResponse: CustomStringConvertible {
    public var description: String { "RemoveGatewayLockResponse()" }
}