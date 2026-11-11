import Foundation
import OCICommon

// MARK: - UpdateBuildPipelineStageRequest

public struct UpdateBuildPipelineStageRequest: Codable, Sendable {
    public var buildPipelineStageId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateBuildPipelineStageDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case buildPipelineStageId, ifMatch, opcRequestId, updateBuildPipelineStageDetails
    }

    public init(
                buildPipelineStageId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateBuildPipelineStageDetails: JSONValue? = nil
    ) {
        self.buildPipelineStageId = buildPipelineStageId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateBuildPipelineStageDetails = updateBuildPipelineStageDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateBuildPipelineStageRequest: CustomStringConvertible {
    public var description: String { "UpdateBuildPipelineStageRequest()" }
}

// MARK: - UpdateBuildPipelineStageResponse

public struct UpdateBuildPipelineStageResponse: Codable, Sendable {
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var buildPipelineStage: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case etag, opcWorkRequestId, opcRequestId, location, buildPipelineStage
    }

    public init(
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                buildPipelineStage: JSONValue? = nil
    ) {
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.buildPipelineStage = buildPipelineStage
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateBuildPipelineStageResponse: CustomStringConvertible {
    public var description: String { "UpdateBuildPipelineStageResponse()" }
}