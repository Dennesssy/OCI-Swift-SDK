import Foundation

// MARK: - UpdateGdpPipelineRequest

public struct UpdateGdpPipelineRequest: Codable, Sendable {
    public var gdpPipelineId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateGdpPipelineDetails: UpdateGdpPipelineDetails?

    private enum CodingKeys: String, CodingKey {
        case gdpPipelineId, ifMatch, opcRequestId, updateGdpPipelineDetails
    }

    public init(
                gdpPipelineId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateGdpPipelineDetails: UpdateGdpPipelineDetails? = nil
    ) {
        self.gdpPipelineId = gdpPipelineId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateGdpPipelineDetails = updateGdpPipelineDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateGdpPipelineRequest: CustomStringConvertible {
    public var description: String { "UpdateGdpPipelineRequest()" }
}

// MARK: - UpdateGdpPipelineResponse

public struct UpdateGdpPipelineResponse: Codable, Sendable {
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

extension UpdateGdpPipelineResponse: CustomStringConvertible {
    public var description: String { "UpdateGdpPipelineResponse()" }
}