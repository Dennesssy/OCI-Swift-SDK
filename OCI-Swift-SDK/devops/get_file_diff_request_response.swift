import Foundation

// MARK: - GetFileDiffRequest

public struct GetFileDiffRequest: Codable, Sendable {
    public var repositoryId: String?
    public var filePath: String?
    public var baseVersion: String?
    public var targetVersion: String?
    public var isComparisonFromMergeBase: Bool?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, filePath, baseVersion, targetVersion, isComparisonFromMergeBase, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                filePath: String? = nil,
                baseVersion: String? = nil,
                targetVersion: String? = nil,
                isComparisonFromMergeBase: Bool? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.filePath = filePath
        self.baseVersion = baseVersion
        self.targetVersion = targetVersion
        self.isComparisonFromMergeBase = isComparisonFromMergeBase
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetFileDiffRequest: CustomStringConvertible {
    public var description: String { "GetFileDiffRequest()" }
}

// MARK: - GetFileDiffResponse

public struct GetFileDiffResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var sunset: String?
    public var fileDiffResponse: FileDiffResponse?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, sunset, fileDiffResponse
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                sunset: String? = nil,
                fileDiffResponse: FileDiffResponse? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.sunset = sunset
        self.fileDiffResponse = fileDiffResponse
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetFileDiffResponse: CustomStringConvertible {
    public var description: String { "GetFileDiffResponse()" }
}