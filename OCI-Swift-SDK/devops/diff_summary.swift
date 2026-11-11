import Foundation
import OCICommon

// MARK: - DiffSummary

public struct DiffSummary: Codable, Sendable {

    public var changes: [DiffChunk]
    public var oldPath: String?
    public var newPath: String?
    public var oldId: String?
    public var newId: String?
    public var areConflictsInFile: Bool?
    public var isLarge: Bool?
    public var isBinary: Bool?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case changes, oldPath, newPath, oldId, newId, areConflictsInFile, isLarge, isBinary, freeformTags, definedTags, systemTags
    }

    public init(
                changes: [DiffChunk],
                oldPath: String? = nil,
                newPath: String? = nil,
                oldId: String? = nil,
                newId: String? = nil,
                areConflictsInFile: Bool? = nil,
                isLarge: Bool? = nil,
                isBinary: Bool? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.changes = changes
        self.oldPath = oldPath
        self.newPath = newPath
        self.oldId = oldId
        self.newId = newId
        self.areConflictsInFile = areConflictsInFile
        self.isLarge = isLarge
        self.isBinary = isBinary
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DiffSummary: CustomStringConvertible {
    public var description: String { "DiffSummary()" }
}