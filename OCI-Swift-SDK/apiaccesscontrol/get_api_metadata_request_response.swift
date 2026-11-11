import Foundation

// MARK: - GetApiMetadataRequest

public struct GetApiMetadataRequest: Codable, Sendable {
    public var apiMetadataId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case apiMetadataId, opcRequestId
    }

    public init(
                apiMetadataId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.apiMetadataId = apiMetadataId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetApiMetadataRequest: CustomStringConvertible {
    public var description: String { "GetApiMetadataRequest()" }
}

// MARK: - GetApiMetadataResponse

public struct GetApiMetadataResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var apiMetadata: ApiMetadata?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, apiMetadata
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                apiMetadata: ApiMetadata? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.apiMetadata = apiMetadata
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetApiMetadataResponse: CustomStringConvertible {
    public var description: String { "GetApiMetadataResponse()" }
}