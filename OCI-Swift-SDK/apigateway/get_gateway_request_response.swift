import Foundation

// MARK: - GetGatewayRequest

public struct GetGatewayRequest: Codable, Sendable {
    public var gatewayId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case gatewayId, opcRequestId
    }

    public init(
                gatewayId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.gatewayId = gatewayId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetGatewayRequest: CustomStringConvertible {
    public var description: String { "GetGatewayRequest()" }
}

// MARK: - GetGatewayResponse

public struct GetGatewayResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var gateway: Gateway?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, gateway
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                gateway: Gateway? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.gateway = gateway
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetGatewayResponse: CustomStringConvertible {
    public var description: String { "GetGatewayResponse()" }
}