import Foundation
import OCICommon

// MARK: - CreateObjectStorageLinkDetails

public struct CreateObjectStorageLinkDetails: Codable, Sendable {

    public var compartmentId: String?
    public var availabilityDomain: String?
    public var lustreFileSystemId: String?
    public var fileSystemPath: String?
    public var objectStoragePrefix: String?
    public var isOverwrite: Bool?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, availabilityDomain, lustreFileSystemId, fileSystemPath, objectStoragePrefix, isOverwrite, displayName, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                availabilityDomain: String? = nil,
                lustreFileSystemId: String? = nil,
                fileSystemPath: String? = nil,
                objectStoragePrefix: String? = nil,
                isOverwrite: Bool? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.availabilityDomain = availabilityDomain
        self.lustreFileSystemId = lustreFileSystemId
        self.fileSystemPath = fileSystemPath
        self.objectStoragePrefix = objectStoragePrefix
        self.isOverwrite = isOverwrite
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateObjectStorageLinkDetails: CustomStringConvertible {
    public var description: String { "CreateObjectStorageLinkDetails()" }
}