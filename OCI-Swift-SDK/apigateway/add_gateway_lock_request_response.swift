import Foundation

// MARK: - AddGatewayLockRequest

public struct AddGatewayLockRequest: Codable, Sendable {
    public var gatewayId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var addResourceLockDetails: AddResourceLockDetails?

    private enum CodingKeys: String, CodingKey {
        case gatewayId, opcRequestId, ifMatch, addResourceLockDetails
    }

    public init(
                gatewayId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                addResourceLockDetails: AddResourceLockDetails? = nil
    ) {
        self.gatewayId = gatewayId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.addResourceLockDetails = addResourceLockDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AddGatewayLockRequest: CustomStringConvertible {
    public var description: String { "AddGatewayLockRequest()" }
}

// MARK: - AddGatewayLockResponse

public struct AddGatewayLockResponse: Codable, Sendable {
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

extension AddGatewayLockResponse: CustomStringConvertible {
    public var description: String { "AddGatewayLockResponse()" }
}