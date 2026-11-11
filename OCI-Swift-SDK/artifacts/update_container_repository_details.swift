import Foundation
import OCICommon

// MARK: - UpdateContainerRepositoryDetails

public struct UpdateContainerRepositoryDetails: Codable, Sendable {

    public var isImmutable: Bool?
    public var isPublic: Bool?
    public var upstreamUsername: String?
    public var upstreamSecretId: String?
    public var readme: ContainerRepositoryReadme?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case isImmutable, isPublic, upstreamUsername, upstreamSecretId, readme, freeformTags, definedTags
    }

    public init(
                isImmutable: Bool? = nil,
                isPublic: Bool? = nil,
                upstreamUsername: String? = nil,
                upstreamSecretId: String? = nil,
                readme: ContainerRepositoryReadme? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.isImmutable = isImmutable
        self.isPublic = isPublic
        self.upstreamUsername = upstreamUsername
        self.upstreamSecretId = upstreamSecretId
        self.readme = readme
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateContainerRepositoryDetails: CustomStringConvertible {
    public var description: String { "UpdateContainerRepositoryDetails()" }
}