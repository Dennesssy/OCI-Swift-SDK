import Foundation
import OCICommon

// MARK: - UpdateSubscriberDetails

public struct UpdateSubscriberDetails: Codable, Sendable {

    public var displayName: String?
    public var clients: [Client]?
    public var usagePlans: [String]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, clients, usagePlans, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                clients: [Client]? = nil,
                usagePlans: [String]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.clients = clients
        self.usagePlans = usagePlans
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateSubscriberDetails: CustomStringConvertible {
    public var description: String { "UpdateSubscriberDetails()" }
}