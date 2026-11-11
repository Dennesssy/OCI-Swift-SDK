import Foundation

// MARK: - ListAllowedDomainLicenseTypesRequest

public struct ListAllowedDomainLicenseTypesRequest: Codable, Sendable {
    public var currentLicenseTypeName: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case currentLicenseTypeName, opcRequestId
    }

    public init(
                currentLicenseTypeName: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.currentLicenseTypeName = currentLicenseTypeName
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListAllowedDomainLicenseTypesRequest: CustomStringConvertible {
    public var description: String { "ListAllowedDomainLicenseTypesRequest()" }
}

// MARK: - ListAllowedDomainLicenseTypesResponse

public struct ListAllowedDomainLicenseTypesResponse: Codable, Sendable {
    public var items: [AllowedDomainLicenseTypeSummary]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [AllowedDomainLicenseTypeSummary]? = nil,
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

extension ListAllowedDomainLicenseTypesResponse: CustomStringConvertible {
    public var description: String { "ListAllowedDomainLicenseTypesResponse()" }
}