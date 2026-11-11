import Foundation

// MARK: - DeleteBuildPipelineRequest

public struct DeleteBuildPipelineRequest: Codable, Sendable {
    public var buildPipelineId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case buildPipelineId, ifMatch, opcRequestId
    }

    public init(
                buildPipelineId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.buildPipelineId = buildPipelineId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteBuildPipelineRequest: CustomStringConvertible {
    public var description: String { "DeleteBuildPipelineRequest()" }
}

// MARK: - DeleteBuildPipelineResponse

public struct DeleteBuildPipelineResponse: Codable, Sendable {
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

extension DeleteBuildPipelineResponse: CustomStringConvertible {
    public var description: String { "DeleteBuildPipelineResponse()" }
}