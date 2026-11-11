import Foundation

// MARK: - UpdateDeployPipelineRequest

public struct UpdateDeployPipelineRequest: Codable, Sendable {
    public var deployPipelineId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateDeployPipelineDetails: UpdateDeployPipelineDetails?

    private enum CodingKeys: String, CodingKey {
        case deployPipelineId, ifMatch, opcRequestId, updateDeployPipelineDetails
    }

    public init(
                deployPipelineId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateDeployPipelineDetails: UpdateDeployPipelineDetails? = nil
    ) {
        self.deployPipelineId = deployPipelineId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateDeployPipelineDetails = updateDeployPipelineDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDeployPipelineRequest: CustomStringConvertible {
    public var description: String { "UpdateDeployPipelineRequest()" }
}

// MARK: - UpdateDeployPipelineResponse

public struct UpdateDeployPipelineResponse: Codable, Sendable {
    public var location: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var deployPipeline: DeployPipeline?

    private enum CodingKeys: String, CodingKey {
        case location, etag, opcWorkRequestId, opcRequestId, deployPipeline
    }

    public init(
                location: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                deployPipeline: DeployPipeline? = nil
    ) {
        self.location = location
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.deployPipeline = deployPipeline
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDeployPipelineResponse: CustomStringConvertible {
    public var description: String { "UpdateDeployPipelineResponse()" }
}