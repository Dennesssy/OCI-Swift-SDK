import Foundation
import OCICommon

// MARK: - CreateContainerRepositoryDetails

public struct CreateContainerRepositoryDetails: Codable, Sendable {

    public var compartmentId: String?
    public var displayName: String?
    public var repositoryType: ContainerRepositoryRepositoryTypeEnum?
    public var isTopLevel: Bool?
    public var upstreamUrl: String?
    public var upstreamUsername: String?
    public var upstreamSecretId: String?
    public var multiRegionPeers: [String]?
    public var isImmutable: Bool?
    public var isPublic: Bool?
    public var readme: ContainerRepositoryReadme?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, repositoryType, isTopLevel, upstreamUrl, upstreamUsername, upstreamSecretId, multiRegionPeers, isImmutable, isPublic, readme, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                repositoryType: ContainerRepositoryRepositoryTypeEnum? = nil,
                isTopLevel: Bool? = nil,
                upstreamUrl: String? = nil,
                upstreamUsername: String? = nil,
                upstreamSecretId: String? = nil,
                multiRegionPeers: [String]? = nil,
                isImmutable: Bool? = nil,
                isPublic: Bool? = nil,
                readme: ContainerRepositoryReadme? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.repositoryType = repositoryType
        self.isTopLevel = isTopLevel
        self.upstreamUrl = upstreamUrl
        self.upstreamUsername = upstreamUsername
        self.upstreamSecretId = upstreamSecretId
        self.multiRegionPeers = multiRegionPeers
        self.isImmutable = isImmutable
        self.isPublic = isPublic
        self.readme = readme
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateContainerRepositoryDetails: CustomStringConvertible {
    public var description: String { "CreateContainerRepositoryDetails()" }
}