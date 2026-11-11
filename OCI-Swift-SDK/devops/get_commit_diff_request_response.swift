import Foundation

// MARK: - GetCommitDiffRequest

public struct GetCommitDiffRequest: Codable, Sendable {
    public var repositoryId: String?
    public var targetVersion: String?
    public var baseVersion: String?
    public var targetRepositoryId: String?
    public var isComparisonFromMergeBase: Bool?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, targetVersion, baseVersion, targetRepositoryId, isComparisonFromMergeBase, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                targetVersion: String? = nil,
                baseVersion: String? = nil,
                targetRepositoryId: String? = nil,
                isComparisonFromMergeBase: Bool? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.targetVersion = targetVersion
        self.baseVersion = baseVersion
        self.targetRepositoryId = targetRepositoryId
        self.isComparisonFromMergeBase = isComparisonFromMergeBase
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetCommitDiffRequest: CustomStringConvertible {
    public var description: String { "GetCommitDiffRequest()" }
}

// MARK: - GetCommitDiffResponse

public struct GetCommitDiffResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var diffResponse: DiffResponse?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, diffResponse
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                diffResponse: DiffResponse? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.diffResponse = diffResponse
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetCommitDiffResponse: CustomStringConvertible {
    public var description: String { "GetCommitDiffResponse()" }
}