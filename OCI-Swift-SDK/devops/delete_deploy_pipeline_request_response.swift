import Foundation

// MARK: - DeleteDeployPipelineRequest

public struct DeleteDeployPipelineRequest: Codable, Sendable {
    public var deployPipelineId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case deployPipelineId, ifMatch, opcRequestId
    }

    public init(
                deployPipelineId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.deployPipelineId = deployPipelineId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDeployPipelineRequest: CustomStringConvertible {
    public var description: String { "DeleteDeployPipelineRequest()" }
}

// MARK: - DeleteDeployPipelineResponse

public struct DeleteDeployPipelineResponse: Codable, Sendable {
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

extension DeleteDeployPipelineResponse: CustomStringConvertible {
    public var description: String { "DeleteDeployPipelineResponse()" }
}