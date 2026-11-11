import Foundation

// MARK: - KnowledgeBaseConfig

public struct KnowledgeBaseConfig: Codable, Sendable {

    public var knowledgeBaseId: String?

    private enum CodingKeys: String, CodingKey {
        case knowledgeBaseId
    }

    public init(
                knowledgeBaseId: String? = nil
    ) {
        self.knowledgeBaseId = knowledgeBaseId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension KnowledgeBaseConfig: CustomStringConvertible {
    public var description: String { "KnowledgeBaseConfig()" }
}