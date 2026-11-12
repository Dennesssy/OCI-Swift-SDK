import Foundation

// MARK: - UploadApiKeyRequest

public struct UploadApiKeyRequest: Codable, Sendable {
    public var userId: String?
    public var opcRequestId: String?
    public var createApiKeyDetails: CreateApiKeyDetails?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case userId, opcRequestId, createApiKeyDetails, opcRetryToken
    }

    public init(
                userId: String? = nil,
                opcRequestId: String? = nil,
                createApiKeyDetails: CreateApiKeyDetails? = nil,
                opcRetryToken: String? = nil
    ) {
        self.userId = userId
        self.opcRequestId = opcRequestId
        self.createApiKeyDetails = createApiKeyDetails
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UploadApiKeyRequest: CustomStringConvertible {
    public var description: String { "UploadApiKeyRequest()" }
}

// MARK: - UploadApiKeyResponse

public struct UploadApiKeyResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var apiKey: ApiKey?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, apiKey
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                apiKey: ApiKey? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.apiKey = apiKey
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UploadApiKeyResponse: CustomStringConvertible {
    public var description: String { "UploadApiKeyResponse()" }
}