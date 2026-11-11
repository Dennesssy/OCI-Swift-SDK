import Foundation
import OCICommon

// MARK: - Script

public struct Script: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var contentType: ContentTypesEnum
    public var monitorStatusCountMap: MonitorStatusCountMap?
    public var content: String?
    public var timeUploaded: Date?
    public var contentSizeInBytes: Int?
    public var contentFileName: String?
    public var parameters: [ScriptParameterInfo]?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, contentType, monitorStatusCountMap, content, timeUploaded, contentSizeInBytes, contentFileName, parameters, timeCreated, timeUpdated, freeformTags, definedTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                contentType: ContentTypesEnum,
                monitorStatusCountMap: MonitorStatusCountMap? = nil,
                content: String? = nil,
                timeUploaded: Date? = nil,
                contentSizeInBytes: Int? = nil,
                contentFileName: String? = nil,
                parameters: [ScriptParameterInfo]? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.contentType = contentType
        self.monitorStatusCountMap = monitorStatusCountMap
        self.content = content
        self.timeUploaded = timeUploaded
        self.contentSizeInBytes = contentSizeInBytes
        self.contentFileName = contentFileName
        self.parameters = parameters
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Script: CustomStringConvertible {
    public var description: String { "Script()" }
}