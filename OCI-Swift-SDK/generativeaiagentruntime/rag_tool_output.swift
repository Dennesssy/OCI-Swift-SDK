import Foundation

// MARK: - RagToolOutput

public struct RagToolOutput: Codable, Sendable {

    public var toolId: String?
    public var text: String?
    public var toolName: String?
    public var citations: [Citation]?
    public var paragraphCitations: [ParagraphCitation]?

    private enum CodingKeys: String, CodingKey {
        case toolId, text, toolName, citations, paragraphCitations
    }

    public init(
                toolId: String? = nil,
                text: String? = nil,
                toolName: String? = nil,
                citations: [Citation]? = nil,
                paragraphCitations: [ParagraphCitation]? = nil
    ) {
        self.toolId = toolId
        self.text = text
        self.toolName = toolName
        self.citations = citations
        self.paragraphCitations = paragraphCitations
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RagToolOutput: CustomStringConvertible {
    public var description: String { "RagToolOutput()" }
}