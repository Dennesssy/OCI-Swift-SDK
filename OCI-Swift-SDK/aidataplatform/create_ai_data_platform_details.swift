import Foundation
import OCICommon

// MARK: - CreateAiDataPlatformDetails

public struct CreateAiDataPlatformDetails: Codable, Sendable {

    public var compartmentId: String?
    public var displayName: String?
    public var aiDataPlatformType: String?
    public var isEnableAiFeature: Bool?
    public var vectorDbId: String?
    public var vectorDbAdminCred: String?
    public var vectorDbAdminSecretId: String?
    public var defaultWorkspaceName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, aiDataPlatformType, isEnableAiFeature, vectorDbId, vectorDbAdminCred, vectorDbAdminSecretId, defaultWorkspaceName, freeformTags, definedTags, systemTags
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                aiDataPlatformType: String? = nil,
                isEnableAiFeature: Bool? = nil,
                vectorDbId: String? = nil,
                vectorDbAdminCred: String? = nil,
                vectorDbAdminSecretId: String? = nil,
                defaultWorkspaceName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.aiDataPlatformType = aiDataPlatformType
        self.isEnableAiFeature = isEnableAiFeature
        self.vectorDbId = vectorDbId
        self.vectorDbAdminCred = vectorDbAdminCred
        self.vectorDbAdminSecretId = vectorDbAdminSecretId
        self.defaultWorkspaceName = defaultWorkspaceName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateAiDataPlatformDetails: CustomStringConvertible {
    public var description: String { "CreateAiDataPlatformDetails()" }
}