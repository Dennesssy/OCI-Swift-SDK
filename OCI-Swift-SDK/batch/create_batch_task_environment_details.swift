import Foundation
import OCICommon

// MARK: - CreateBatchTaskEnvironmentDetails

public struct CreateBatchTaskEnvironmentDetails: Codable, Sendable {

    public var compartmentId: String?
    public var imageUrl: String?
    public var displayName: String?
    public var description: String?
    public var securityContext: SecurityContext?
    public var workingDirectory: String?
    public var volumes: [JSONValue]?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, imageUrl, displayName, description, securityContext, workingDirectory, volumes, definedTags, freeformTags
    }

    public init(
                compartmentId: String? = nil,
                imageUrl: String? = nil,
                displayName: String? = nil,
                description: String? = nil,
                securityContext: SecurityContext? = nil,
                workingDirectory: String? = nil,
                volumes: [JSONValue]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil
    ) {
        self.compartmentId = compartmentId
        self.imageUrl = imageUrl
        self.displayName = displayName
        self.description = description
        self.securityContext = securityContext
        self.workingDirectory = workingDirectory
        self.volumes = volumes
        self.definedTags = definedTags
        self.freeformTags = freeformTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
