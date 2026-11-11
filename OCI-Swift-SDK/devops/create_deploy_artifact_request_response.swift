import Foundation

// MARK: - CreateDeployArtifactRequest

public struct CreateDeployArtifactRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createDeployArtifactDetails: CreateDeployArtifactDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createDeployArtifactDetails
    }

    public init(
                opcRequestId: String? = nil,
                createDeployArtifactDetails: CreateDeployArtifactDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createDeployArtifactDetails = createDeployArtifactDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDeployArtifactRequest: CustomStringConvertible {
    public var description: String { "CreateDeployArtifactRequest()" }
}

// MARK: - CreateDeployArtifactResponse

public struct CreateDeployArtifactResponse: Codable, Sendable {
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

extension CreateDeployArtifactResponse: CustomStringConvertible {
    public var description: String { "CreateDeployArtifactResponse()" }
}