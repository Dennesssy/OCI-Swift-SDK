import Foundation

// MARK: - InlineJobOutput

public struct InlineJobOutput: Codable, Sendable {

    public var content: String?

    private enum CodingKeys: String, CodingKey {
        case content
    }

    public init(
                content: String? = nil
    ) {
        self.content = content
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension InlineJobOutput: CustomStringConvertible {
    public var description: String { "InlineJobOutput()" }
}