import Foundation
import OCICommon

// MARK: - CreatePrivateServiceAccessDetails

public struct CreatePrivateServiceAccessDetails: Codable, Sendable {

    public var compartmentId: String?
    public var subnetId: String?
    public var serviceId: String?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?
    public var securityAttributes: [String: [String: JSONValue]]?
    public var displayName: String?
    public var description: String?
    public var nsgIds: [String]?
    public var ipv4Ip: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, subnetId, serviceId, definedTags, freeformTags, securityAttributes, displayName, description, nsgIds, ipv4Ip
    }

    public init(
                compartmentId: String? = nil,
                subnetId: String? = nil,
                serviceId: String? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil,
                securityAttributes: [String: [String: JSONValue]]? = nil,
                displayName: String? = nil,
                description: String? = nil,
                nsgIds: [String]? = nil,
                ipv4Ip: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.subnetId = subnetId
        self.serviceId = serviceId
        self.definedTags = definedTags
        self.freeformTags = freeformTags
        self.securityAttributes = securityAttributes
        self.displayName = displayName
        self.description = description
        self.nsgIds = nsgIds
        self.ipv4Ip = ipv4Ip
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
