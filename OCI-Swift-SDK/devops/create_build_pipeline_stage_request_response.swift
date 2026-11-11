import Foundation
import OCICommon

// MARK: - CreateBuildPipelineStageRequest

public struct CreateBuildPipelineStageRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createBuildPipelineStageDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createBuildPipelineStageDetails
    }

    public init(
                opcRequestId: String? = nil,
                createBuildPipelineStageDetails: JSONValue? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createBuildPipelineStageDetails = createBuildPipelineStageDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateBuildPipelineStageRequest: CustomStringConvertible {
    public var description: String { "CreateBuildPipelineStageRequest()" }
}

// MARK: - CreateBuildPipelineStageResponse

public struct CreateBuildPipelineStageResponse: Codable, Sendable {
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

extension CreateBuildPipelineStageResponse: CustomStringConvertible {
    public var description: String { "CreateBuildPipelineStageResponse()" }
}