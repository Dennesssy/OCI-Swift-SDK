import Foundation

// MARK: - SummarizeRepositoryAnalyticsRequest

public struct SummarizeRepositoryAnalyticsRequest: Codable, Sendable {
    public var repositoryId: String?
    public var limit: Int?
    public var page: String?
    public var opcRequestId: String?
    public var summarizeRepositoryAnalyticsDetails: SummarizeRepositoryAnalyticsDetails?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, limit, page, opcRequestId, summarizeRepositoryAnalyticsDetails
    }

    public init(
                repositoryId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                opcRequestId: String? = nil,
                summarizeRepositoryAnalyticsDetails: SummarizeRepositoryAnalyticsDetails? = nil
    ) {
        self.repositoryId = repositoryId
        self.limit = limit
        self.page = page
        self.opcRequestId = opcRequestId
        self.summarizeRepositoryAnalyticsDetails = summarizeRepositoryAnalyticsDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SummarizeRepositoryAnalyticsRequest: CustomStringConvertible {
    public var description: String { "SummarizeRepositoryAnalyticsRequest()" }
}

// MARK: - SummarizeRepositoryAnalyticsResponse

public struct SummarizeRepositoryAnalyticsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var repositoryMetricAggregation: RepositoryMetricAggregation?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, repositoryMetricAggregation
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                repositoryMetricAggregation: RepositoryMetricAggregation? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.repositoryMetricAggregation = repositoryMetricAggregation
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SummarizeRepositoryAnalyticsResponse: CustomStringConvertible {
    public var description: String { "SummarizeRepositoryAnalyticsResponse()" }
}