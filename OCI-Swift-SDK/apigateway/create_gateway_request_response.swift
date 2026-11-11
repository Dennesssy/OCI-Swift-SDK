import Foundation

// MARK: - CreateGatewayRequest

public struct CreateGatewayRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createGatewayDetails: CreateGatewayDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createGatewayDetails
    }

    public init(
                opcRequestId: String? = nil,
                createGatewayDetails: CreateGatewayDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createGatewayDetails = createGatewayDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateGatewayRequest: CustomStringConvertible {
    public var description: String { "CreateGatewayRequest()" }
}

// MARK: - CreateGatewayResponse

public struct CreateGatewayResponse: Codable, Sendable {
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var gateway: Gateway?

    private enum CodingKeys: String, CodingKey {
        case etag, opcWorkRequestId, opcRequestId, location, gateway
    }

    public init(
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                gateway: Gateway? = nil
    ) {
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.gateway = gateway
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateGatewayResponse: CustomStringConvertible {
    public var description: String { "CreateGatewayResponse()" }
}