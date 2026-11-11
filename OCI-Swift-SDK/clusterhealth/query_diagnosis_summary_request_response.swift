import Foundation

// MARK: - QueryDiagnosisSummaryRequest

public struct QueryDiagnosisSummaryRequest: Codable, Sendable {
    public var diagnosisStoreId: String?
    public var opcRequestId: String?
    public var limit: Int?
    public var page: String?
    public var queryDiagnosisSummaryDetails: QueryDiagnosisSummaryDetails?

    private enum CodingKeys: String, CodingKey {
        case diagnosisStoreId, opcRequestId, limit, page, queryDiagnosisSummaryDetails
    }

    public init(
                diagnosisStoreId: String? = nil,
                opcRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                queryDiagnosisSummaryDetails: QueryDiagnosisSummaryDetails? = nil
    ) {
        self.diagnosisStoreId = diagnosisStoreId
        self.opcRequestId = opcRequestId
        self.limit = limit
        self.page = page
        self.queryDiagnosisSummaryDetails = queryDiagnosisSummaryDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension QueryDiagnosisSummaryRequest: CustomStringConvertible {
    public var description: String { "QueryDiagnosisSummaryRequest()" }
}

// MARK: - QueryDiagnosisSummaryResponse

public struct QueryDiagnosisSummaryResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var diagnosisSummaryCollection: DiagnosisSummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, diagnosisSummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                diagnosisSummaryCollection: DiagnosisSummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.diagnosisSummaryCollection = diagnosisSummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension QueryDiagnosisSummaryResponse: CustomStringConvertible {
    public var description: String { "QueryDiagnosisSummaryResponse()" }
}