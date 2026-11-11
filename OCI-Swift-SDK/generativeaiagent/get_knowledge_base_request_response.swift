import Foundation

// MARK: - GetKnowledgeBaseRequest

public struct GetKnowledgeBaseRequest: Codable, Sendable {
    public var knowledgeBaseId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case knowledgeBaseId, opcRequestId
    }

    public init(
                knowledgeBaseId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.knowledgeBaseId = knowledgeBaseId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetKnowledgeBaseRequest: CustomStringConvertible {
    public var description: String { "GetKnowledgeBaseRequest()" }
}

// MARK: - GetKnowledgeBaseResponse

public struct GetKnowledgeBaseResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var knowledgeBase: KnowledgeBase?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, knowledgeBase
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                knowledgeBase: KnowledgeBase? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.knowledgeBase = knowledgeBase
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetKnowledgeBaseResponse: CustomStringConvertible {
    public var description: String { "GetKnowledgeBaseResponse()" }
}