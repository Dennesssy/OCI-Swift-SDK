import Foundation
import OCICommon

// MARK: - UpdateLustreFileSystemDetails

public struct UpdateLustreFileSystemDetails: Codable, Sendable {

    public var displayName: String?
    public var fileSystemDescription: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var nsgIds: [String]?
    public var kmsKeyId: String?
    public var capacityInGBs: Int?
    public var rootSquashConfiguration: RootSquashConfiguration?
    public var maintenanceWindow: MaintenanceWindow?

    private enum CodingKeys: String, CodingKey {
        case displayName, fileSystemDescription, freeformTags, definedTags, nsgIds, kmsKeyId, capacityInGBs, rootSquashConfiguration, maintenanceWindow
    }

    public init(
                displayName: String? = nil,
                fileSystemDescription: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                nsgIds: [String]? = nil,
                kmsKeyId: String? = nil,
                capacityInGBs: Int? = nil,
                rootSquashConfiguration: RootSquashConfiguration? = nil,
                maintenanceWindow: MaintenanceWindow? = nil
    ) {
        self.displayName = displayName
        self.fileSystemDescription = fileSystemDescription
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.nsgIds = nsgIds
        self.kmsKeyId = kmsKeyId
        self.capacityInGBs = capacityInGBs
        self.rootSquashConfiguration = rootSquashConfiguration
        self.maintenanceWindow = maintenanceWindow
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateLustreFileSystemDetails: CustomStringConvertible {
    public var description: String { "UpdateLustreFileSystemDetails()" }
}