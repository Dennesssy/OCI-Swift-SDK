import Foundation

// MARK: - GetTenancyRequest

public struct GetTenancyRequest: Codable, Sendable {
    public var tenancyId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case tenancyId, opcRequestId
    }

    public init(
                tenancyId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.tenancyId = tenancyId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetTenancyRequest: CustomStringConvertible {
    public var description: String { "GetTenancyRequest()" }
}

// MARK: - GetTenancyResponse

public struct GetTenancyResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var tenancy: Tenancy?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, tenancy
    }

    public init(
                opcRequestId: String? = nil,
                tenancy: Tenancy? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.tenancy = tenancy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetTenancyResponse: CustomStringConvertible {
    public var description: String { "GetTenancyResponse()" }
}