import Foundation

// MARK: - DownloadInfrastructureConfigFileRequest

public struct DownloadInfrastructureConfigFileRequest: Codable, Sendable {
    public var infrastructureId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case infrastructureId, opcRequestId
    }

    public init(
                infrastructureId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.infrastructureId = infrastructureId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DownloadInfrastructureConfigFileRequest: CustomStringConvertible {
    public var description: String { "DownloadInfrastructureConfigFileRequest()" }
}

// MARK: - DownloadInfrastructureConfigFileResponse

public struct DownloadInfrastructureConfigFileResponse: Codable, Sendable {
    public var content: Data?
    public var etag: String?
    public var opcRequestId: String?
    public var contentLength: Int64?
    public var lastModified: Date?

    private enum CodingKeys: String, CodingKey {
        case content, etag, opcRequestId, contentLength, lastModified
    }

    public init(
                content: Data? = nil,
                etag: String? = nil,
                opcRequestId: String? = nil,
                contentLength: Int64? = nil,
                lastModified: Date? = nil
    ) {
        self.content = content
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.contentLength = contentLength
        self.lastModified = lastModified
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DownloadInfrastructureConfigFileResponse: CustomStringConvertible {
    public var description: String { "DownloadInfrastructureConfigFileResponse()" }
}