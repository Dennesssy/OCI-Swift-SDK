import Foundation

// MARK: - StopGdpPipelineRequest

public struct StopGdpPipelineRequest: Codable, Sendable {
    public var gdpPipelineId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case gdpPipelineId, ifMatch, opcRequestId
    }

    public init(
                gdpPipelineId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.gdpPipelineId = gdpPipelineId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension StopGdpPipelineRequest: CustomStringConvertible {
    public var description: String { "StopGdpPipelineRequest()" }
}

// MARK: - StopGdpPipelineResponse

public struct StopGdpPipelineResponse: Codable, Sendable {
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

extension StopGdpPipelineResponse: CustomStringConvertible {
    public var description: String { "StopGdpPipelineResponse()" }
}