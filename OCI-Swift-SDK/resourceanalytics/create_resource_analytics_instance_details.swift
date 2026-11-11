import Foundation
import OCICommon

// MARK: - CreateResourceAnalyticsInstanceDetails

public struct CreateResourceAnalyticsInstanceDetails: Codable, Sendable {

    public var compartmentId: String?
    public var adwAdminPassword: JSONValue
    public var subnetId: String?
    public var displayName: String?
    public var description: String?
    public var isMutualTlsRequired: Bool?
    public var nsgIds: [String]?
    public var computeCount: Int?
    public var licenseModel: CreateResourceAnalyticsInstanceDetailsLicenseModelEnum?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, adwAdminPassword, subnetId, displayName, description, isMutualTlsRequired, nsgIds, computeCount, licenseModel, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                adwAdminPassword: JSONValue,
                subnetId: String? = nil,
                displayName: String? = nil,
                description: String? = nil,
                isMutualTlsRequired: Bool? = nil,
                nsgIds: [String]? = nil,
                computeCount: Int? = nil,
                licenseModel: CreateResourceAnalyticsInstanceDetailsLicenseModelEnum? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.adwAdminPassword = adwAdminPassword
        self.subnetId = subnetId
        self.displayName = displayName
        self.description = description
        self.isMutualTlsRequired = isMutualTlsRequired
        self.nsgIds = nsgIds
        self.computeCount = computeCount
        self.licenseModel = licenseModel
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
