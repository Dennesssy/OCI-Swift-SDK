import Foundation
import OCICommon

// MARK: - UpdateGatewayDetails

public struct UpdateGatewayDetails: Codable, Sendable {

    public var displayName: String?
    public var networkSecurityGroupIds: [String]?
    public var certificateId: String?
    public var responseCacheDetails: JSONValue?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var caBundles: [JSONValue]?

    private enum CodingKeys: String, CodingKey {
        case displayName, networkSecurityGroupIds, certificateId, responseCacheDetails, freeformTags, definedTags, caBundles
    }

    public init(
                displayName: String? = nil,
                networkSecurityGroupIds: [String]? = nil,
                certificateId: String? = nil,
                responseCacheDetails: JSONValue? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                caBundles: [JSONValue]? = nil
    ) {
        self.displayName = displayName
        self.networkSecurityGroupIds = networkSecurityGroupIds
        self.certificateId = certificateId
        self.responseCacheDetails = responseCacheDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.caBundles = caBundles
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateGatewayDetails: CustomStringConvertible {
    public var description: String { "UpdateGatewayDetails()" }
}