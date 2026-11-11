import Foundation

// MARK: - DiffLineDetails

public struct DiffLineDetails: Codable, Sendable {

    public var baseLine: Int?
    public var targetLine: Int?
    public var lineContent: String?
    public var conflictMarker: DiffLineDetailsConflictMarkerEnum?

    private enum CodingKeys: String, CodingKey {
        case baseLine, targetLine, lineContent, conflictMarker
    }

    public init(
                baseLine: Int? = nil,
                targetLine: Int? = nil,
                lineContent: String? = nil,
                conflictMarker: DiffLineDetailsConflictMarkerEnum? = nil
    ) {
        self.baseLine = baseLine
        self.targetLine = targetLine
        self.lineContent = lineContent
        self.conflictMarker = conflictMarker
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DiffLineDetails: CustomStringConvertible {
    public var description: String { "DiffLineDetails()" }
}