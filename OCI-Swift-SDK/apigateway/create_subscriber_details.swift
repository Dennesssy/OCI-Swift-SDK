import Foundation
import OCICommon

// MARK: - CreateSubscriberDetails

public struct CreateSubscriberDetails: Codable, Sendable {

    public var compartmentId: String?
    public var clients: [Client]
    public var usagePlans: [String]
    public var displayName: String?
    public var locks: [AddResourceLockDetails]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, clients, usagePlans, displayName, locks, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                clients: [Client],
                usagePlans: [String],
                displayName: String? = nil,
                locks: [AddResourceLockDetails]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.clients = clients
        self.usagePlans = usagePlans
        self.displayName = displayName
        self.locks = locks
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateSubscriberDetails: CustomStringConvertible {
    public var description: String { "CreateSubscriberDetails()" }
}