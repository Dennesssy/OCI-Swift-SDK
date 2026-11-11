import Foundation
import OCICommon

// MARK: - CreateInstanceDetails

public struct CreateInstanceDetails: Codable, Sendable {

    public var identityDomainUrl: String?
    public var adminIdentityDomainUserId: String?
    public var compartmentId: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case identityDomainUrl, adminIdentityDomainUserId, compartmentId, displayName, freeformTags, definedTags
    }

    public init(
                identityDomainUrl: String? = nil,
                adminIdentityDomainUserId: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.identityDomainUrl = identityDomainUrl
        self.adminIdentityDomainUserId = adminIdentityDomainUserId
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateInstanceDetails: CustomStringConvertible {
    public var description: String { "CreateInstanceDetails()" }
}