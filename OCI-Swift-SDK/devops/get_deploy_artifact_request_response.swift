import Foundation

// MARK: - GetDeployArtifactRequest

public struct GetDeployArtifactRequest: Codable, Sendable {
    public var deployArtifactId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case deployArtifactId, opcRequestId
    }

    public init(
                deployArtifactId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.deployArtifactId = deployArtifactId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDeployArtifactRequest: CustomStringConvertible {
    public var description: String { "GetDeployArtifactRequest()" }
}

// MARK: - GetDeployArtifactResponse

public struct GetDeployArtifactResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var deployArtifact: DeployArtifact?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, deployArtifact
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                deployArtifact: DeployArtifact? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.deployArtifact = deployArtifact
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDeployArtifactResponse: CustomStringConvertible {
    public var description: String { "GetDeployArtifactResponse()" }
}