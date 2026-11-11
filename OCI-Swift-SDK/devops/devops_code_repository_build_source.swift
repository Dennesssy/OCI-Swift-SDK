import Foundation

// MARK: - DevopsCodeRepositoryBuildSource

public struct DevopsCodeRepositoryBuildSource: Codable, Sendable {

    public var name: String?
    public var repositoryUrl: String?
    public var branch: String?
    public var repositoryId: String?

    private enum CodingKeys: String, CodingKey {
        case name, repositoryUrl, branch, repositoryId
    }

    public init(
                name: String? = nil,
                repositoryUrl: String? = nil,
                branch: String? = nil,
                repositoryId: String? = nil
    ) {
        self.name = name
        self.repositoryUrl = repositoryUrl
        self.branch = branch
        self.repositoryId = repositoryId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DevopsCodeRepositoryBuildSource: CustomStringConvertible {
    public var description: String { "DevopsCodeRepositoryBuildSource()" }
}