import Foundation

// MARK: - DiffSection

public struct DiffSection: Codable, Sendable {

    public var type: String?
    public var lines: [DiffLineDetails]?

    private enum CodingKeys: String, CodingKey {
        case type, lines
    }

    public init(
                type: String? = nil,
                lines: [DiffLineDetails]? = nil
    ) {
        self.type = type
        self.lines = lines
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DiffSection: CustomStringConvertible {
    public var description: String { "DiffSection()" }
}