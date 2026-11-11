import Foundation

// MARK: - deployartifactsource

public struct deployartifactsource: Codable, Sendable {

    public var jsonData: Data?
    public var deployArtifactSourceType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, deployArtifactSourceType
    }

    public init(
                jsonData: Data? = nil,
                deployArtifactSourceType: String? = nil
    ) {
        self.jsonData = jsonData
        self.deployArtifactSourceType = deployArtifactSourceType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension deployartifactsource: CustomStringConvertible {
    public var description: String { "deployartifactsource()" }
}