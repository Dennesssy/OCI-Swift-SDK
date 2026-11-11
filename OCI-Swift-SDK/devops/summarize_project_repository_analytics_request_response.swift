import Foundation

// MARK: - SummarizeProjectRepositoryAnalyticsRequest

public struct SummarizeProjectRepositoryAnalyticsRequest: Codable, Sendable {
    public var projectId: String?
    public var limit: Int?
    public var page: String?
    public var opcRequestId: String?
    public var summarizeProjectRepositoryAnalyticsDetails: SummarizeProjectRepositoryAnalyticsDetails?

    private enum CodingKeys: String, CodingKey {
        case projectId, limit, page, opcRequestId, summarizeProjectRepositoryAnalyticsDetails
    }

    public init(
                projectId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                opcRequestId: String? = nil,
                summarizeProjectRepositoryAnalyticsDetails: SummarizeProjectRepositoryAnalyticsDetails? = nil
    ) {
        self.projectId = projectId
        self.limit = limit
        self.page = page
        self.opcRequestId = opcRequestId
        self.summarizeProjectRepositoryAnalyticsDetails = summarizeProjectRepositoryAnalyticsDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SummarizeProjectRepositoryAnalyticsRequest: CustomStringConvertible {
    public var description: String { "SummarizeProjectRepositoryAnalyticsRequest()" }
}

// MARK: - SummarizeProjectRepositoryAnalyticsResponse

public struct SummarizeProjectRepositoryAnalyticsResponse: Codable, Sendable {
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

extension SummarizeProjectRepositoryAnalyticsResponse: CustomStringConvertible {
    public var description: String { "SummarizeProjectRepositoryAnalyticsResponse()" }
}