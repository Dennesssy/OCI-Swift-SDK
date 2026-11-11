import Foundation

// MARK: - ListFaultDomainsRequest

public struct ListFaultDomainsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var availabilityDomain: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, availabilityDomain, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                availabilityDomain: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.availabilityDomain = availabilityDomain
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListFaultDomainsRequest: CustomStringConvertible {
    public var description: String { "ListFaultDomainsRequest()" }
}

// MARK: - ListFaultDomainsResponse

public struct ListFaultDomainsResponse: Codable, Sendable {
    public var items: [FaultDomain]?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId
    }

    public init(
                items: [FaultDomain]? = nil,
                opcRequestId: String? = nil
    ) {
        self.items = items
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListFaultDomainsResponse: CustomStringConvertible {
    public var description: String { "ListFaultDomainsResponse()" }
}