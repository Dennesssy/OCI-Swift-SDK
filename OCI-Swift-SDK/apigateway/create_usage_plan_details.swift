import Foundation
import OCICommon

// MARK: - CreateUsagePlanDetails

public struct CreateUsagePlanDetails: Codable, Sendable {

    public var entitlements: [Entitlement]
    public var compartmentId: String?
    public var displayName: String?
    public var locks: [AddResourceLockDetails]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case entitlements, compartmentId, displayName, locks, freeformTags, definedTags
    }

    public init(
                entitlements: [Entitlement],
                compartmentId: String? = nil,
                displayName: String? = nil,
                locks: [AddResourceLockDetails]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.entitlements = entitlements
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.locks = locks
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateUsagePlanDetails: CustomStringConvertible {
    public var description: String { "CreateUsagePlanDetails()" }
}