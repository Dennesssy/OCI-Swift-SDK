import Foundation

// MARK: - UpdateWlsDomainRequest

public struct UpdateWlsDomainRequest: Codable, Sendable {
    public var wlsDomainId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateWlsDomainDetails: UpdateWlsDomainDetails?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainId, ifMatch, opcRequestId, updateWlsDomainDetails
    }

    public init(
                wlsDomainId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateWlsDomainDetails: UpdateWlsDomainDetails? = nil
    ) {
        self.wlsDomainId = wlsDomainId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateWlsDomainDetails = updateWlsDomainDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateWlsDomainRequest: CustomStringConvertible {
    public var description: String { "UpdateWlsDomainRequest()" }
}

// MARK: - UpdateWlsDomainResponse

public struct UpdateWlsDomainResponse: Codable, Sendable {
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

extension UpdateWlsDomainResponse: CustomStringConvertible {
    public var description: String { "UpdateWlsDomainResponse()" }
}