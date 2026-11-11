import Foundation

// MARK: - ParagraphCitation

public struct ParagraphCitation: Codable, Sendable {

    public var paragraph: Paragraph?
    public var citations: [Citation]?

    private enum CodingKeys: String, CodingKey {
        case paragraph, citations
    }

    public init(
                paragraph: Paragraph? = nil,
                citations: [Citation]? = nil
    ) {
        self.paragraph = paragraph
        self.citations = citations
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ParagraphCitation: CustomStringConvertible {
    public var description: String { "ParagraphCitation()" }
}