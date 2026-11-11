import Foundation

// MARK: - GetDeployPipelineRequest

public struct GetDeployPipelineRequest: Codable, Sendable {
    public var deployPipelineId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case deployPipelineId, opcRequestId
    }

    public init(
                deployPipelineId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.deployPipelineId = deployPipelineId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDeployPipelineRequest: CustomStringConvertible {
    public var description: String { "GetDeployPipelineRequest()" }
}

// MARK: - GetDeployPipelineResponse

public struct GetDeployPipelineResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var deployPipeline: DeployPipeline?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, deployPipeline
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                deployPipeline: DeployPipeline? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.deployPipeline = deployPipeline
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDeployPipelineResponse: CustomStringConvertible {
    public var description: String { "GetDeployPipelineResponse()" }
}