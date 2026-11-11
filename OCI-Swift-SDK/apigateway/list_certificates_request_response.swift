import Foundation

// MARK: - ListCertificatesRequest

public struct ListCertificatesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var lifecycleState: CertificateLifecycleStateEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListCertificatesSortOrderEnum?
    public var sortBy: ListCertificatesSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, lifecycleState, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                lifecycleState: CertificateLifecycleStateEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListCertificatesSortOrderEnum? = nil,
                sortBy: ListCertificatesSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.lifecycleState = lifecycleState
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListCertificatesRequest: CustomStringConvertible {
    public var description: String { "ListCertificatesRequest()" }
}

// MARK: - ListCertificatesResponse

public struct ListCertificatesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var opcPrevPage: String?
    public var certificateCollection: CertificateCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, opcPrevPage, certificateCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                opcPrevPage: String? = nil,
                certificateCollection: CertificateCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.opcPrevPage = opcPrevPage
        self.certificateCollection = certificateCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListCertificatesResponse: CustomStringConvertible {
    public var description: String { "ListCertificatesResponse()" }
}