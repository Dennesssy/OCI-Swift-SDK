import Foundation

// MARK: - ListJavaMigrationAnalysisRequest

public struct ListJavaMigrationAnalysisRequest: Codable, Sendable {
    public var compartmentId: String?
    public var id: String?
    public var analysisProjectName: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListJavaMigrationAnalysisSortOrderEnum?
    public var sortBy: ListJavaMigrationAnalysisSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, id, analysisProjectName, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                id: String? = nil,
                analysisProjectName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListJavaMigrationAnalysisSortOrderEnum? = nil,
                sortBy: ListJavaMigrationAnalysisSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.id = id
        self.analysisProjectName = analysisProjectName
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

extension ListJavaMigrationAnalysisRequest: CustomStringConvertible {
    public var description: String { "ListJavaMigrationAnalysisRequest()" }
}

// MARK: - ListJavaMigrationAnalysisResponse

public struct ListJavaMigrationAnalysisResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var javaMigrationAnalysisCollection: JavaMigrationAnalysisCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, javaMigrationAnalysisCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                javaMigrationAnalysisCollection: JavaMigrationAnalysisCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.javaMigrationAnalysisCollection = javaMigrationAnalysisCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListJavaMigrationAnalysisResponse: CustomStringConvertible {
    public var description: String { "ListJavaMigrationAnalysisResponse()" }
}