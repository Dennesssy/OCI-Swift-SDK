import Foundation

// MARK: - UpdateKnowledgeBaseRequest

public struct UpdateKnowledgeBaseRequest: Codable, Sendable {
    public var knowledgeBaseId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateKnowledgeBaseDetails: UpdateKnowledgeBaseDetails?

    private enum CodingKeys: String, CodingKey {
        case knowledgeBaseId, ifMatch, opcRequestId, updateKnowledgeBaseDetails
    }

    public init(
                knowledgeBaseId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateKnowledgeBaseDetails: UpdateKnowledgeBaseDetails? = nil
    ) {
        self.knowledgeBaseId = knowledgeBaseId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateKnowledgeBaseDetails = updateKnowledgeBaseDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateKnowledgeBaseRequest: CustomStringConvertible {
    public var description: String { "UpdateKnowledgeBaseRequest()" }
}

// MARK: - UpdateKnowledgeBaseResponse

public struct UpdateKnowledgeBaseResponse: Codable, Sendable {
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

extension UpdateKnowledgeBaseResponse: CustomStringConvertible {
    public var description: String { "UpdateKnowledgeBaseResponse()" }
}