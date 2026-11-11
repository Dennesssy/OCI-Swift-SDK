import Foundation

// MARK: - DiffResponseEntry

public struct DiffResponseEntry: Codable, Sendable {

    public var changeType: String?
    public var objectType: String?
    public var commitId: String?
    public var oldPath: String?
    public var newPath: String?
    public var oldId: String?
    public var newId: String?
    public var url: String?
    public var addedLinesCount: Int?
    public var deletedLinesCount: Int?
    public var areConflictsInFile: Bool?

    private enum CodingKeys: String, CodingKey {
        case changeType, objectType, commitId, oldPath, newPath, oldId, newId, url, addedLinesCount, deletedLinesCount, areConflictsInFile
    }

    public init(
                changeType: String? = nil,
                objectType: String? = nil,
                commitId: String? = nil,
                oldPath: String? = nil,
                newPath: String? = nil,
                oldId: String? = nil,
                newId: String? = nil,
                url: String? = nil,
                addedLinesCount: Int? = nil,
                deletedLinesCount: Int? = nil,
                areConflictsInFile: Bool? = nil
    ) {
        self.changeType = changeType
        self.objectType = objectType
        self.commitId = commitId
        self.oldPath = oldPath
        self.newPath = newPath
        self.oldId = oldId
        self.newId = newId
        self.url = url
        self.addedLinesCount = addedLinesCount
        self.deletedLinesCount = deletedLinesCount
        self.areConflictsInFile = areConflictsInFile
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DiffResponseEntry: CustomStringConvertible {
    public var description: String { "DiffResponseEntry()" }
}