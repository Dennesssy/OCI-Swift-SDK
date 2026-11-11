import Foundation
import OCICommon

// MARK: - repositoryrefsummary

public struct repositoryrefsummary: Codable, Sendable {

    public var jsonData: Data?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var refName: String?
    public var fullRefName: String?
    public var repositoryId: String?
    public var refType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, timeCreated, timeUpdated, freeformTags, definedTags, systemTags, refName, fullRefName, repositoryId, refType
    }

    public init(
                jsonData: Data? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                refName: String? = nil,
                fullRefName: String? = nil,
                repositoryId: String? = nil,
                refType: String? = nil
    ) {
        self.jsonData = jsonData
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.refName = refName
        self.fullRefName = fullRefName
        self.repositoryId = repositoryId
        self.refType = refType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension repositoryrefsummary: CustomStringConvertible {
    public var description: String { "repositoryrefsummary()" }
}