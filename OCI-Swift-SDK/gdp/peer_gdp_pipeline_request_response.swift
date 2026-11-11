import Foundation

// MARK: - PeerGdpPipelineRequest

public struct PeerGdpPipelineRequest: Codable, Sendable {
    public var gdpPipelineId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var peerGdpPipelineDetails: PeerGdpPipelineDetails?

    private enum CodingKeys: String, CodingKey {
        case gdpPipelineId, ifMatch, opcRequestId, peerGdpPipelineDetails
    }

    public init(
                gdpPipelineId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                peerGdpPipelineDetails: PeerGdpPipelineDetails? = nil
    ) {
        self.gdpPipelineId = gdpPipelineId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.peerGdpPipelineDetails = peerGdpPipelineDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PeerGdpPipelineRequest: CustomStringConvertible {
    public var description: String { "PeerGdpPipelineRequest()" }
}

// MARK: - PeerGdpPipelineResponse

public struct PeerGdpPipelineResponse: Codable, Sendable {
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

extension PeerGdpPipelineResponse: CustomStringConvertible {
    public var description: String { "PeerGdpPipelineResponse()" }
}