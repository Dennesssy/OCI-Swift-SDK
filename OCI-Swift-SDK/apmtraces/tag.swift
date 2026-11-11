import Foundation

// MARK: - Tag

public struct Tag: Codable, Sendable {

    public var tagName: String?
    public var tagValue: String?

    private enum CodingKeys: String, CodingKey {
        case tagName, tagValue
    }

    public init(
                tagName: String? = nil,
                tagValue: String? = nil
    ) {
        self.tagName = tagName
        self.tagValue = tagValue
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Tag: CustomStringConvertible {
    public var description: String { "Tag()" }
}