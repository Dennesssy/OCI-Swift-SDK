import Foundation

// MARK: - DeleteBuildPipelineStageRequest

public struct DeleteBuildPipelineStageRequest: Codable, Sendable {
    public var buildPipelineStageId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case buildPipelineStageId, ifMatch, opcRequestId
    }

    public init(
                buildPipelineStageId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.buildPipelineStageId = buildPipelineStageId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteBuildPipelineStageRequest: CustomStringConvertible {
    public var description: String { "DeleteBuildPipelineStageRequest()" }
}

// MARK: - DeleteBuildPipelineStageResponse

public struct DeleteBuildPipelineStageResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteBuildPipelineStageResponse: CustomStringConvertible {
    public var description: String { "DeleteBuildPipelineStageResponse()" }
}