import Foundation

// MARK: - ListLimitsIncreaseQuestionsRequest

public struct ListLimitsIncreaseQuestionsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var serviceName: String?
    public var limitName: String?
    public var opcRequestId: String?
    public var sortOrder: ListLimitsIncreaseQuestionsSortOrderEnum?
    public var sortBy: ListLimitsIncreaseQuestionsSortByEnum?
    public var limit: Int?
    public var page: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, serviceName, limitName, opcRequestId, sortOrder, sortBy, limit, page
    }

    public init(
                compartmentId: String? = nil,
                serviceName: String? = nil,
                limitName: String? = nil,
                opcRequestId: String? = nil,
                sortOrder: ListLimitsIncreaseQuestionsSortOrderEnum? = nil,
                sortBy: ListLimitsIncreaseQuestionsSortByEnum? = nil,
                limit: Int? = nil,
                page: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.serviceName = serviceName
        self.limitName = limitName
        self.opcRequestId = opcRequestId
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.limit = limit
        self.page = page
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListLimitsIncreaseQuestionsRequest: CustomStringConvertible {
    public var description: String { "ListLimitsIncreaseQuestionsRequest()" }
}

// MARK: - ListLimitsIncreaseQuestionsResponse

public struct ListLimitsIncreaseQuestionsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var limitsIncreaseQuestionCollection: LimitsIncreaseQuestionCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, limitsIncreaseQuestionCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                limitsIncreaseQuestionCollection: LimitsIncreaseQuestionCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.limitsIncreaseQuestionCollection = limitsIncreaseQuestionCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListLimitsIncreaseQuestionsResponse: CustomStringConvertible {
    public var description: String { "ListLimitsIncreaseQuestionsResponse()" }
}