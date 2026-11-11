import Foundation
import OCICommon

// MARK: - HelmRepositoryDeployArtifactSource

public struct HelmRepositoryDeployArtifactSource: Codable, Sendable {

    public var chartUrl: String?
    public var deployArtifactVersion: String?
    public var helmVerificationKeySource: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case chartUrl, deployArtifactVersion, helmVerificationKeySource
    }

    public init(
                chartUrl: String? = nil,
                deployArtifactVersion: String? = nil,
                helmVerificationKeySource: JSONValue? = nil
    ) {
        self.chartUrl = chartUrl
        self.deployArtifactVersion = deployArtifactVersion
        self.helmVerificationKeySource = helmVerificationKeySource
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension HelmRepositoryDeployArtifactSource: CustomStringConvertible {
    public var description: String { "HelmRepositoryDeployArtifactSource()" }
}