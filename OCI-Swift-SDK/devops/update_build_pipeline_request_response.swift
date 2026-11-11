import Foundation

// MARK: - UpdateBuildPipelineRequest

public struct UpdateBuildPipelineRequest: Codable, Sendable {
    public var buildPipelineId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateBuildPipelineDetails: UpdateBuildPipelineDetails?

    private enum CodingKeys: String, CodingKey {
        case buildPipelineId, ifMatch, opcRequestId, updateBuildPipelineDetails
    }

    public init(
                buildPipelineId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateBuildPipelineDetails: UpdateBuildPipelineDetails? = nil
    ) {
        self.buildPipelineId = buildPipelineId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateBuildPipelineDetails = updateBuildPipelineDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateBuildPipelineRequest: CustomStringConvertible {
    public var description: String { "UpdateBuildPipelineRequest()" }
}

// MARK: - UpdateBuildPipelineResponse

public struct UpdateBuildPipelineResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var opcWorkRequestId: String?
    public var location: String?
    public var buildPipeline: BuildPipeline?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, opcWorkRequestId, location, buildPipeline
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil,
                location: String? = nil,
                buildPipeline: BuildPipeline? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
        self.location = location
        self.buildPipeline = buildPipeline
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateBuildPipelineResponse: CustomStringConvertible {
    public var description: String { "UpdateBuildPipelineResponse()" }
}