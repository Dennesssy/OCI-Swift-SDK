import Foundation

// MARK: - CreateKnowledgeBaseRequest

public struct CreateKnowledgeBaseRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createKnowledgeBaseDetails: CreateKnowledgeBaseDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createKnowledgeBaseDetails
    }

    public init(
                opcRequestId: String? = nil,
                createKnowledgeBaseDetails: CreateKnowledgeBaseDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createKnowledgeBaseDetails = createKnowledgeBaseDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateKnowledgeBaseRequest: CustomStringConvertible {
    public var description: String { "CreateKnowledgeBaseRequest()" }
}

// MARK: - CreateKnowledgeBaseResponse

public struct CreateKnowledgeBaseResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var knowledgeBase: KnowledgeBase?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, knowledgeBase
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                knowledgeBase: KnowledgeBase? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.knowledgeBase = knowledgeBase
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateKnowledgeBaseResponse: CustomStringConvertible {
    public var description: String { "CreateKnowledgeBaseResponse()" }
}