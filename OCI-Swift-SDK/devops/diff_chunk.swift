import Foundation

// MARK: - DiffChunk

public struct DiffChunk: Codable, Sendable {

    public var baseLine: Int?
    public var baseSpan: Int?
    public var targetLine: Int?
    public var targetSpan: Int?
    public var diffSections: [DiffSection]?

    private enum CodingKeys: String, CodingKey {
        case baseLine, baseSpan, targetLine, targetSpan, diffSections
    }

    public init(
                baseLine: Int? = nil,
                baseSpan: Int? = nil,
                targetLine: Int? = nil,
                targetSpan: Int? = nil,
                diffSections: [DiffSection]? = nil
    ) {
        self.baseLine = baseLine
        self.baseSpan = baseSpan
        self.targetLine = targetLine
        self.targetSpan = targetSpan
        self.diffSections = diffSections
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DiffChunk: CustomStringConvertible {
    public var description: String { "DiffChunk()" }
}