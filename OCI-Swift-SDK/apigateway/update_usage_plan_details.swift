import Foundation
import OCICommon

// MARK: - UpdateUsagePlanDetails

public struct UpdateUsagePlanDetails: Codable, Sendable {

    public var displayName: String?
    public var entitlements: [Entitlement]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, entitlements, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                entitlements: [Entitlement]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.entitlements = entitlements
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateUsagePlanDetails: CustomStringConvertible {
    public var description: String { "UpdateUsagePlanDetails()" }
}