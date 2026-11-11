import Foundation

// MARK: - KnowledgeBaseCollection

public struct KnowledgeBaseCollection: Codable, Sendable {

    public var items: [KnowledgeBaseSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [KnowledgeBaseSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension KnowledgeBaseCollection: CustomStringConvertible {
    public var description: String { "KnowledgeBaseCollection()" }
}