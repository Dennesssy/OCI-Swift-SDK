import Foundation

// MARK: - ListAvailabilityDomainsRequest

public struct ListAvailabilityDomainsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListAvailabilityDomainsRequest: CustomStringConvertible {
    public var description: String { "ListAvailabilityDomainsRequest()" }
}

// MARK: - ListAvailabilityDomainsResponse

public struct ListAvailabilityDomainsResponse: Codable, Sendable {
    public var items: [AvailabilityDomain]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [AvailabilityDomain]? = nil,
                opcRequestId: String? = nil,
                opcNextPage: String? = nil
    ) {
        self.items = items
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListAvailabilityDomainsResponse: CustomStringConvertible {
    public var description: String { "ListAvailabilityDomainsResponse()" }
}