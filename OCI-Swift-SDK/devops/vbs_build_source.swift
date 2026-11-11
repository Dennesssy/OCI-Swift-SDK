import Foundation

// MARK: - VbsBuildSource

public struct VbsBuildSource: Codable, Sendable {

    public var name: String?
    public var repositoryUrl: String?
    public var branch: String?
    public var connectionId: String?

    private enum CodingKeys: String, CodingKey {
        case name, repositoryUrl, branch, connectionId
    }

    public init(
                name: String? = nil,
                repositoryUrl: String? = nil,
                branch: String? = nil,
                connectionId: String? = nil
    ) {
        self.name = name
        self.repositoryUrl = repositoryUrl
        self.branch = branch
        self.connectionId = connectionId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension VbsBuildSource: CustomStringConvertible {
    public var description: String { "VbsBuildSource()" }
}