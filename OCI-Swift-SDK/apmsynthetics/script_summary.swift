import Foundation
import OCICommon

// MARK: - ScriptSummary

public struct ScriptSummary: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var contentType: ContentTypesEnum
    public var monitorStatusCountMap: MonitorStatusCountMap?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, contentType, monitorStatusCountMap, timeCreated, timeUpdated, freeformTags, definedTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                contentType: ContentTypesEnum,
                monitorStatusCountMap: MonitorStatusCountMap? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.contentType = contentType
        self.monitorStatusCountMap = monitorStatusCountMap
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ScriptSummary: CustomStringConvertible {
    public var description: String { "ScriptSummary()" }
}