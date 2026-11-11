import Foundation

// MARK: - UpdateDeployArtifactRequest

public struct UpdateDeployArtifactRequest: Codable, Sendable {
    public var deployArtifactId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateDeployArtifactDetails: UpdateDeployArtifactDetails?

    private enum CodingKeys: String, CodingKey {
        case deployArtifactId, ifMatch, opcRequestId, updateDeployArtifactDetails
    }

    public init(
                deployArtifactId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateDeployArtifactDetails: UpdateDeployArtifactDetails? = nil
    ) {
        self.deployArtifactId = deployArtifactId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateDeployArtifactDetails = updateDeployArtifactDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDeployArtifactRequest: CustomStringConvertible {
    public var description: String { "UpdateDeployArtifactRequest()" }
}

// MARK: - UpdateDeployArtifactResponse

public struct UpdateDeployArtifactResponse: Codable, Sendable {
    public var location: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var deployArtifact: DeployArtifact?

    private enum CodingKeys: String, CodingKey {
        case location, etag, opcWorkRequestId, opcRequestId, deployArtifact
    }

    public init(
                location: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                deployArtifact: DeployArtifact? = nil
    ) {
        self.location = location
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.deployArtifact = deployArtifact
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDeployArtifactResponse: CustomStringConvertible {
    public var description: String { "UpdateDeployArtifactResponse()" }
}