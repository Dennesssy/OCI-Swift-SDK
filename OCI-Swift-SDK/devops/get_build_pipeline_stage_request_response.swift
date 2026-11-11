import Foundation
import OCICommon

// MARK: - GetBuildPipelineStageRequest

public struct GetBuildPipelineStageRequest: Codable, Sendable {
    public var buildPipelineStageId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case buildPipelineStageId, opcRequestId
    }

    public init(
                buildPipelineStageId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.buildPipelineStageId = buildPipelineStageId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetBuildPipelineStageRequest: CustomStringConvertible {
    public var description: String { "GetBuildPipelineStageRequest()" }
}

// MARK: - GetBuildPipelineStageResponse

public struct GetBuildPipelineStageResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var buildPipelineStage: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, buildPipelineStage
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                buildPipelineStage: JSONValue? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.buildPipelineStage = buildPipelineStage
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetBuildPipelineStageResponse: CustomStringConvertible {
    public var description: String { "GetBuildPipelineStageResponse()" }
}