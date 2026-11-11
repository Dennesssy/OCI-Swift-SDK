import Foundation

// MARK: - DiffResponse

public struct DiffResponse: Codable, Sendable {

    public var changes: [DiffResponseEntry]
    public var areAllChangesIncluded: Bool?
    public var changeTypeCount: [String: Int]?
    public var commonCommit: String?
    public var commitsAheadCount: Int?
    public var commitsBehindCount: Int?
    public var addedLinesCount: Int?
    public var deletedLinesCount: Int?

    private enum CodingKeys: String, CodingKey {
        case changes, areAllChangesIncluded, changeTypeCount, commonCommit, commitsAheadCount, commitsBehindCount, addedLinesCount, deletedLinesCount
    }

    public init(
                changes: [DiffResponseEntry],
                areAllChangesIncluded: Bool? = nil,
                changeTypeCount: [String: Int]? = nil,
                commonCommit: String? = nil,
                commitsAheadCount: Int? = nil,
                commitsBehindCount: Int? = nil,
                addedLinesCount: Int? = nil,
                deletedLinesCount: Int? = nil
    ) {
        self.changes = changes
        self.areAllChangesIncluded = areAllChangesIncluded
        self.changeTypeCount = changeTypeCount
        self.commonCommit = commonCommit
        self.commitsAheadCount = commitsAheadCount
        self.commitsBehindCount = commitsBehindCount
        self.addedLinesCount = addedLinesCount
        self.deletedLinesCount = deletedLinesCount
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DiffResponse: CustomStringConvertible {
    public var description: String { "DiffResponse()" }
}