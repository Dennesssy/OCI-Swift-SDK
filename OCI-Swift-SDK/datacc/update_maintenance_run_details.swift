import Foundation
import OCICommon

// MARK: - UpdateMaintenanceRunDetails

public struct UpdateMaintenanceRunDetails: Codable, Sendable {

    public var patchingMode: PatchingModeEnumEnum
    public var customActionTimeoutInMins: Int?
    public var isCustomActionTimeoutEnabled: Bool?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?

    private enum CodingKeys: String, CodingKey {
        case patchingMode, customActionTimeoutInMins, isCustomActionTimeoutEnabled, definedTags, freeformTags
    }

    public init(
                patchingMode: PatchingModeEnumEnum,
                customActionTimeoutInMins: Int? = nil,
                isCustomActionTimeoutEnabled: Bool? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil
    ) {
        self.patchingMode = patchingMode
        self.customActionTimeoutInMins = customActionTimeoutInMins
        self.isCustomActionTimeoutEnabled = isCustomActionTimeoutEnabled
        self.definedTags = definedTags
        self.freeformTags = freeformTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateMaintenanceRunDetails: CustomStringConvertible {
    public var description: String { "UpdateMaintenanceRunDetails()" }
}