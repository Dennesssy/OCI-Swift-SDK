import Foundation

// MARK: - GetObjectContentRequest

public struct GetObjectContentRequest: Codable, Sendable {
    public var repositoryId: String?
    public var sha: String?
    public var filePath: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, sha, filePath, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                sha: String? = nil,
                filePath: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.sha = sha
        self.filePath = filePath
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetObjectContentRequest: CustomStringConvertible {
    public var description: String { "GetObjectContentRequest()" }
}

// MARK: - GetObjectContentResponse

public struct GetObjectContentResponse: Codable, Sendable {
    public var content: Data?
    public var opcRequestId: String?
    public var contentType: String?
    public var contentDisposition: String?

    private enum CodingKeys: String, CodingKey {
        case content, opcRequestId, contentType, contentDisposition
    }

    public init(
                content: Data? = nil,
                opcRequestId: String? = nil,
                contentType: String? = nil,
                contentDisposition: String? = nil
    ) {
        self.content = content
        self.opcRequestId = opcRequestId
        self.contentType = contentType
        self.contentDisposition = contentDisposition
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetObjectContentResponse: CustomStringConvertible {
    public var description: String { "GetObjectContentResponse()" }
}