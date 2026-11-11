import Foundation

// MARK: - CreateBuildPipelineRequest

public struct CreateBuildPipelineRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createBuildPipelineDetails: CreateBuildPipelineDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createBuildPipelineDetails
    }

    public init(
                opcRequestId: String? = nil,
                createBuildPipelineDetails: CreateBuildPipelineDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createBuildPipelineDetails = createBuildPipelineDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateBuildPipelineRequest: CustomStringConvertible {
    public var description: String { "CreateBuildPipelineRequest()" }
}

// MARK: - CreateBuildPipelineResponse

public struct CreateBuildPipelineResponse: Codable, Sendable {
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var buildPipeline: BuildPipeline?

    private enum CodingKeys: String, CodingKey {
        case etag, opcWorkRequestId, opcRequestId, location, buildPipeline
    }

    public init(
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                buildPipeline: BuildPipeline? = nil
    ) {
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.buildPipeline = buildPipeline
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateBuildPipelineResponse: CustomStringConvertible {
    public var description: String { "CreateBuildPipelineResponse()" }
}