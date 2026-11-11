import Foundation

// MARK: - ListAgreementRecordsRequest

public struct ListAgreementRecordsRequest: Codable, Sendable {
    public var wlsDomainId: String?
    public var opcRequestId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListAgreementRecordsSortOrderEnum?
    public var sortBy: ListAgreementRecordsSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainId, opcRequestId, limit, page, sortOrder, sortBy
    }

    public init(
                wlsDomainId: String? = nil,
                opcRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListAgreementRecordsSortOrderEnum? = nil,
                sortBy: ListAgreementRecordsSortByEnum? = nil
    ) {
        self.wlsDomainId = wlsDomainId
        self.opcRequestId = opcRequestId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListAgreementRecordsRequest: CustomStringConvertible {
    public var description: String { "ListAgreementRecordsRequest()" }
}

// MARK: - ListAgreementRecordsResponse

public struct ListAgreementRecordsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var agreementRecordCollection: AgreementRecordCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, agreementRecordCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                agreementRecordCollection: AgreementRecordCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.agreementRecordCollection = agreementRecordCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListAgreementRecordsResponse: CustomStringConvertible {
    public var description: String { "ListAgreementRecordsResponse()" }
}