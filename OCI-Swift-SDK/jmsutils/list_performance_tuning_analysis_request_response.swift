import Foundation

// MARK: - ListPerformanceTuningAnalysisRequest

public struct ListPerformanceTuningAnalysisRequest: Codable, Sendable {
    public var compartmentId: String?
    public var id: String?
    public var analysisProjectName: String?
    public var performanceTuningAnalysisResult: PerformanceTuningAnalysisResultEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListPerformanceTuningAnalysisSortOrderEnum?
    public var sortBy: ListPerformanceTuningAnalysisSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, id, analysisProjectName, performanceTuningAnalysisResult, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                id: String? = nil,
                analysisProjectName: String? = nil,
                performanceTuningAnalysisResult: PerformanceTuningAnalysisResultEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListPerformanceTuningAnalysisSortOrderEnum? = nil,
                sortBy: ListPerformanceTuningAnalysisSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.id = id
        self.analysisProjectName = analysisProjectName
        self.performanceTuningAnalysisResult = performanceTuningAnalysisResult
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

extension ListPerformanceTuningAnalysisRequest: CustomStringConvertible {
    public var description: String { "ListPerformanceTuningAnalysisRequest()" }
}

// MARK: - ListPerformanceTuningAnalysisResponse

public struct ListPerformanceTuningAnalysisResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var performanceTuningAnalysisCollection: PerformanceTuningAnalysisCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, performanceTuningAnalysisCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                performanceTuningAnalysisCollection: PerformanceTuningAnalysisCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.performanceTuningAnalysisCollection = performanceTuningAnalysisCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListPerformanceTuningAnalysisResponse: CustomStringConvertible {
    public var description: String { "ListPerformanceTuningAnalysisResponse()" }
}