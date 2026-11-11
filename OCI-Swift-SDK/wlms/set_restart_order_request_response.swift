import Foundation

// MARK: - SetRestartOrderRequest

public struct SetRestartOrderRequest: Codable, Sendable {
    public var wlsDomainId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var setRestartOrderDetails: SetRestartOrderDetails?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainId, ifMatch, opcRequestId, setRestartOrderDetails
    }

    public init(
                wlsDomainId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                setRestartOrderDetails: SetRestartOrderDetails? = nil
    ) {
        self.wlsDomainId = wlsDomainId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.setRestartOrderDetails = setRestartOrderDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SetRestartOrderRequest: CustomStringConvertible {
    public var description: String { "SetRestartOrderRequest()" }
}

// MARK: - SetRestartOrderResponse

public struct SetRestartOrderResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var serverCollection: ServerCollection?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, serverCollection
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                serverCollection: ServerCollection? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.serverCollection = serverCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SetRestartOrderResponse: CustomStringConvertible {
    public var description: String { "SetRestartOrderResponse()" }
}