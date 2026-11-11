import Foundation
import OCICommon

// MARK: - RepositoryPathSummary

public struct RepositoryPathSummary: Codable, Sendable {

    public var type: String?
    public var sizeInBytes: Int64?
    public var name: String?
    public var path: String?
    public var sha: String?
    public var submoduleGitUrl: String?
    public var lastCommitDetails: RepositoryPathCommitDetails?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case type, sizeInBytes, name, path, sha, submoduleGitUrl, lastCommitDetails, freeformTags, definedTags, systemTags
    }

    public init(
                type: String? = nil,
                sizeInBytes: Int64? = nil,
                name: String? = nil,
                path: String? = nil,
                sha: String? = nil,
                submoduleGitUrl: String? = nil,
                lastCommitDetails: RepositoryPathCommitDetails? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.type = type
        self.sizeInBytes = sizeInBytes
        self.name = name
        self.path = path
        self.sha = sha
        self.submoduleGitUrl = submoduleGitUrl
        self.lastCommitDetails = lastCommitDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RepositoryPathSummary: CustomStringConvertible {
    public var description: String { "RepositoryPathSummary()" }
}