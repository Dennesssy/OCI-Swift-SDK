import Foundation

// MARK: - PeerGdpPipelineDetails

public struct PeerGdpPipelineDetails: Codable, Sendable {

    public var peeringGdpPipelineId: String?
    public var peerValidationNonce: String?

    private enum CodingKeys: String, CodingKey {
        case peeringGdpPipelineId, peerValidationNonce
    }

    public init(
                peeringGdpPipelineId: String? = nil,
                peerValidationNonce: String? = nil
    ) {
        self.peeringGdpPipelineId = peeringGdpPipelineId
        self.peerValidationNonce = peerValidationNonce
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PeerGdpPipelineDetails: CustomStringConvertible {
    public var description: String { "PeerGdpPipelineDetails()" }
}