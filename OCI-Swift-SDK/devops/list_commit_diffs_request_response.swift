import Foundation

// MARK: - ListCommitDiffsRequest

public struct ListCommitDiffsRequest: Codable, Sendable {
    public var repositoryId: String?
    public var baseVersion: String?
    public var targetVersion: String?
    public var targetRepositoryId: String?
    public var isComparisonFromMergeBase: Bool?
    public var limit: Int?
    public var page: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, baseVersion, targetVersion, targetRepositoryId, isComparisonFromMergeBase, limit, page, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                baseVersion: String? = nil,
                targetVersion: String? = nil,
                targetRepositoryId: String? = nil,
                isComparisonFromMergeBase: Bool? = nil,
                limit: Int? = nil,
                page: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.baseVersion = baseVersion
        self.targetVersion = targetVersion
        self.targetRepositoryId = targetRepositoryId
        self.isComparisonFromMergeBase = isComparisonFromMergeBase
        self.limit = limit
        self.page = page
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListCommitDiffsRequest: CustomStringConvertible {
    public var description: String { "ListCommitDiffsRequest()" }
}

// MARK: - ListCommitDiffsResponse

public struct ListCommitDiffsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var diffCollection: DiffCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, diffCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                diffCollection: DiffCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.diffCollection = diffCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListCommitDiffsResponse: CustomStringConvertible {
    public var description: String { "ListCommitDiffsResponse()" }
}