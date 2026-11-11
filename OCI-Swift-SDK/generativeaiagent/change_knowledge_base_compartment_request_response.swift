import Foundation

// MARK: - ChangeKnowledgeBaseCompartmentRequest

public struct ChangeKnowledgeBaseCompartmentRequest: Codable, Sendable {
    public var knowledgeBaseId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeKnowledgeBaseCompartmentDetails: ChangeKnowledgeBaseCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case knowledgeBaseId, ifMatch, opcRequestId, changeKnowledgeBaseCompartmentDetails
    }

    public init(
                knowledgeBaseId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeKnowledgeBaseCompartmentDetails: ChangeKnowledgeBaseCompartmentDetails? = nil
    ) {
        self.knowledgeBaseId = knowledgeBaseId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeKnowledgeBaseCompartmentDetails = changeKnowledgeBaseCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeKnowledgeBaseCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeKnowledgeBaseCompartmentRequest()" }
}

// MARK: - ChangeKnowledgeBaseCompartmentResponse

public struct ChangeKnowledgeBaseCompartmentResponse: Codable, Sendable {
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

extension ChangeKnowledgeBaseCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeKnowledgeBaseCompartmentResponse()" }
}