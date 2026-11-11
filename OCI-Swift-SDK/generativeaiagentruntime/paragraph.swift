import Foundation

// MARK: - Paragraph

public struct Paragraph: Codable, Sendable {

    public var text: String?
    public var start: Int?
    public var end: Int?

    private enum CodingKeys: String, CodingKey {
        case text, start, end
    }

    public init(
                text: String? = nil,
                start: Int? = nil,
                end: Int? = nil
    ) {
        self.text = text
        self.start = start
        self.end = end
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Paragraph: CustomStringConvertible {
    public var description: String { "Paragraph()" }
}