import Foundation

// MARK: - FileDiffResponse

public struct FileDiffResponse: Codable, Sendable {

    public var changes: [DiffChunk]
    public var oldPath: String?
    public var newPath: String?
    public var oldId: String?
    public var newId: String?
    public var areConflictsInFile: Bool?
    public var isLarge: Bool?
    public var isBinary: Bool?

    private enum CodingKeys: String, CodingKey {
        case changes, oldPath, newPath, oldId, newId, areConflictsInFile, isLarge, isBinary
    }

    public init(
                changes: [DiffChunk],
                oldPath: String? = nil,
                newPath: String? = nil,
                oldId: String? = nil,
                newId: String? = nil,
                areConflictsInFile: Bool? = nil,
                isLarge: Bool? = nil,
                isBinary: Bool? = nil
    ) {
        self.changes = changes
        self.oldPath = oldPath
        self.newPath = newPath
        self.oldId = oldId
        self.newId = newId
        self.areConflictsInFile = areConflictsInFile
        self.isLarge = isLarge
        self.isBinary = isBinary
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension FileDiffResponse: CustomStringConvertible {
    public var description: String { "FileDiffResponse()" }
}