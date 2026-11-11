import Foundation

// MARK: - GetBuildPipelineRequest

public struct GetBuildPipelineRequest: Codable, Sendable {
    public var buildPipelineId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case buildPipelineId, opcRequestId
    }

    public init(
                buildPipelineId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.buildPipelineId = buildPipelineId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetBuildPipelineRequest: CustomStringConvertible {
    public var description: String { "GetBuildPipelineRequest()" }
}

// MARK: - GetBuildPipelineResponse

public struct GetBuildPipelineResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var buildPipeline: BuildPipeline?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, buildPipeline
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                buildPipeline: BuildPipeline? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.buildPipeline = buildPipeline
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetBuildPipelineResponse: CustomStringConvertible {
    public var description: String { "GetBuildPipelineResponse()" }
}