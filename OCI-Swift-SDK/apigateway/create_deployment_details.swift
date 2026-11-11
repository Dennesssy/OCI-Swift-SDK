import Foundation
import OCICommon

// MARK: - CreateDeploymentDetails

public struct CreateDeploymentDetails: Codable, Sendable {

    public var gatewayId: String?
    public var compartmentId: String?
    public var pathPrefix: String?
    public var specification: ApiSpecification?
    public var displayName: String?
    public var locks: [AddResourceLockDetails]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case gatewayId, compartmentId, pathPrefix, specification, displayName, locks, freeformTags, definedTags
    }

    public init(
                gatewayId: String? = nil,
                compartmentId: String? = nil,
                pathPrefix: String? = nil,
                specification: ApiSpecification? = nil,
                displayName: String? = nil,
                locks: [AddResourceLockDetails]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.gatewayId = gatewayId
        self.compartmentId = compartmentId
        self.pathPrefix = pathPrefix
        self.specification = specification
        self.displayName = displayName
        self.locks = locks
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDeploymentDetails: CustomStringConvertible {
    public var description: String { "CreateDeploymentDetails()" }
}