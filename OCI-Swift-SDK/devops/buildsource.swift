import Foundation

// MARK: - buildsource

public struct buildsource: Codable, Sendable {

    public var jsonData: Data?
    public var name: String?
    public var repositoryUrl: String?
    public var branch: String?
    public var connectionType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, name, repositoryUrl, branch, connectionType
    }

    public init(
                jsonData: Data? = nil,
                name: String? = nil,
                repositoryUrl: String? = nil,
                branch: String? = nil,
                connectionType: String? = nil
    ) {
        self.jsonData = jsonData
        self.name = name
        self.repositoryUrl = repositoryUrl
        self.branch = branch
        self.connectionType = connectionType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension buildsource: CustomStringConvertible {
    public var description: String { "buildsource()" }
}