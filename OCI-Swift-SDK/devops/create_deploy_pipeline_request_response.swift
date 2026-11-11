import Foundation

// MARK: - CreateDeployPipelineRequest

public struct CreateDeployPipelineRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createDeployPipelineDetails: CreateDeployPipelineDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createDeployPipelineDetails
    }

    public init(
                opcRequestId: String? = nil,
                createDeployPipelineDetails: CreateDeployPipelineDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createDeployPipelineDetails = createDeployPipelineDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDeployPipelineRequest: CustomStringConvertible {
    public var description: String { "CreateDeployPipelineRequest()" }
}

// MARK: - CreateDeployPipelineResponse

public struct CreateDeployPipelineResponse: Codable, Sendable {
    public var location: String?
    public var opcWorkRequestId: String?
    public var etag: String?
    public var opcRequestId: String?
    public var deployPipeline: DeployPipeline?

    private enum CodingKeys: String, CodingKey {
        case location, opcWorkRequestId, etag, opcRequestId, deployPipeline
    }

    public init(
                location: String? = nil,
                opcWorkRequestId: String? = nil,
                etag: String? = nil,
                opcRequestId: String? = nil,
                deployPipeline: DeployPipeline? = nil
    ) {
        self.location = location
        self.opcWorkRequestId = opcWorkRequestId
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.deployPipeline = deployPipeline
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDeployPipelineResponse: CustomStringConvertible {
    public var description: String { "CreateDeployPipelineResponse()" }
}