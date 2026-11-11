import Foundation

// MARK: - MessageContent

public struct MessageContent: Codable, Sendable {

    public var text: String?
    public var citations: [Citation]?
    public var paragraphCitations: [ParagraphCitation]?

    private enum CodingKeys: String, CodingKey {
        case text, citations, paragraphCitations
    }

    public init(
                text: String? = nil,
                citations: [Citation]? = nil,
                paragraphCitations: [ParagraphCitation]? = nil
    ) {
        self.text = text
        self.citations = citations
        self.paragraphCitations = paragraphCitations
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MessageContent: CustomStringConvertible {
    public var description: String { "MessageContent()" }
}