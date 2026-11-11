import Foundation

// MARK: - RetrieveMetadataRequest

public struct RetrieveMetadataRequest: Codable, Sendable {
    public var knowledgeBaseId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var retrieveMetadataDetails: RetrieveMetadataDetails?

    private enum CodingKeys: String, CodingKey {
        case knowledgeBaseId, opcRequestId, ifMatch, retrieveMetadataDetails
    }

    public init(
                knowledgeBaseId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                retrieveMetadataDetails: RetrieveMetadataDetails? = nil
    ) {
        self.knowledgeBaseId = knowledgeBaseId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.retrieveMetadataDetails = retrieveMetadataDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RetrieveMetadataRequest: CustomStringConvertible {
    public var description: String { "RetrieveMetadataRequest()" }
}

// MARK: - RetrieveMetadataResponse

public struct RetrieveMetadataResponse: Codable, Sendable {
    public var items: [KnowledgeBaseMetadataSummary]?
    public var etag: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case items, etag, opcRequestId
    }

    public init(
                items: [KnowledgeBaseMetadataSummary]? = nil,
                etag: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.items = items
        self.etag = etag
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RetrieveMetadataResponse: CustomStringConvertible {
    public var description: String { "RetrieveMetadataResponse()" }
}