import Foundation

// MARK: - GetWlsDomainRequest

public struct GetWlsDomainRequest: Codable, Sendable {
    public var wlsDomainId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainId, opcRequestId
    }

    public init(
                wlsDomainId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.wlsDomainId = wlsDomainId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetWlsDomainRequest: CustomStringConvertible {
    public var description: String { "GetWlsDomainRequest()" }
}

// MARK: - GetWlsDomainResponse

public struct GetWlsDomainResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var wlsDomain: WlsDomain?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, wlsDomain
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                wlsDomain: WlsDomain? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.wlsDomain = wlsDomain
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetWlsDomainResponse: CustomStringConvertible {
    public var description: String { "GetWlsDomainResponse()" }
}