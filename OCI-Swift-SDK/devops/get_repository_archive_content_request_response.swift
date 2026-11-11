import Foundation

// MARK: - GetRepositoryArchiveContentRequest

public struct GetRepositoryArchiveContentRequest: Codable, Sendable {
    public var repositoryId: String?
    public var refName: String?
    public var format: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, refName, format, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                refName: String? = nil,
                format: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.refName = refName
        self.format = format
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetRepositoryArchiveContentRequest: CustomStringConvertible {
    public var description: String { "GetRepositoryArchiveContentRequest()" }
}

// MARK: - GetRepositoryArchiveContentResponse

public struct GetRepositoryArchiveContentResponse: Codable, Sendable {
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

extension GetRepositoryArchiveContentResponse: CustomStringConvertible {
    public var description: String { "GetRepositoryArchiveContentResponse()" }
}