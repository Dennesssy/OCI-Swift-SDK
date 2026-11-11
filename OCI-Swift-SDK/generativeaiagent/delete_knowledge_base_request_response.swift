import Foundation

// MARK: - DeleteKnowledgeBaseRequest

public struct DeleteKnowledgeBaseRequest: Codable, Sendable {
    public var knowledgeBaseId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case knowledgeBaseId, ifMatch, opcRequestId
    }

    public init(
                knowledgeBaseId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.knowledgeBaseId = knowledgeBaseId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteKnowledgeBaseRequest: CustomStringConvertible {
    public var description: String { "DeleteKnowledgeBaseRequest()" }
}

// MARK: - DeleteKnowledgeBaseResponse

public struct DeleteKnowledgeBaseResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteKnowledgeBaseResponse: CustomStringConvertible {
    public var description: String { "DeleteKnowledgeBaseResponse()" }
}