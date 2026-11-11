import Foundation
import OCICommon

// MARK: - CreateDomainDetails

public struct CreateDomainDetails: Codable, Sendable {

    public var compartmentId: String?
    public var displayName: String?
    public var description: String?
    public var homeRegion: String?
    public var licenseType: String?
    public var isHiddenOnLogin: Bool?
    public var adminFirstName: String?
    public var adminLastName: String?
    public var adminUserName: String?
    public var adminEmail: String?
    public var isNotificationBypassed: Bool?
    public var isPrimaryEmailRequired: Bool?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, description, homeRegion, licenseType, isHiddenOnLogin, adminFirstName, adminLastName, adminUserName, adminEmail, isNotificationBypassed, isPrimaryEmailRequired, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                description: String? = nil,
                homeRegion: String? = nil,
                licenseType: String? = nil,
                isHiddenOnLogin: Bool? = nil,
                adminFirstName: String? = nil,
                adminLastName: String? = nil,
                adminUserName: String? = nil,
                adminEmail: String? = nil,
                isNotificationBypassed: Bool? = nil,
                isPrimaryEmailRequired: Bool? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.description = description
        self.homeRegion = homeRegion
        self.licenseType = licenseType
        self.isHiddenOnLogin = isHiddenOnLogin
        self.adminFirstName = adminFirstName
        self.adminLastName = adminLastName
        self.adminUserName = adminUserName
        self.adminEmail = adminEmail
        self.isNotificationBypassed = isNotificationBypassed
        self.isPrimaryEmailRequired = isPrimaryEmailRequired
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
