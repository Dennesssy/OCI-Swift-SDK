import Foundation

// MARK: - GetRepoFileDiffRequest

public struct GetRepoFileDiffRequest: Codable, Sendable {
    public var repositoryId: String?
    public var baseVersion: String?
    public var targetVersion: String?
    public var filePath: String?
    public var isComparisonFromMergeBase: Bool?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, baseVersion, targetVersion, filePath, isComparisonFromMergeBase, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                baseVersion: String? = nil,
                targetVersion: String? = nil,
                filePath: String? = nil,
                isComparisonFromMergeBase: Bool? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.baseVersion = baseVersion
        self.targetVersion = targetVersion
        self.filePath = filePath
        self.isComparisonFromMergeBase = isComparisonFromMergeBase
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetRepoFileDiffRequest: CustomStringConvertible {
    public var description: String { "GetRepoFileDiffRequest()" }
}

// MARK: - GetRepoFileDiffResponse

public struct GetRepoFileDiffResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var fileDiffResponse: FileDiffResponse?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, fileDiffResponse
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                fileDiffResponse: FileDiffResponse? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.fileDiffResponse = fileDiffResponse
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetRepoFileDiffResponse: CustomStringConvertible {
    public var description: String { "GetRepoFileDiffResponse()" }
}