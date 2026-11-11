import Foundation

// MARK: - CreateGdpPipelineRequest

public struct CreateGdpPipelineRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createGdpPipelineDetails: CreateGdpPipelineDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createGdpPipelineDetails
    }

    public init(
                opcRequestId: String? = nil,
                createGdpPipelineDetails: CreateGdpPipelineDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createGdpPipelineDetails = createGdpPipelineDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateGdpPipelineRequest: CustomStringConvertible {
    public var description: String { "CreateGdpPipelineRequest()" }
}

// MARK: - CreateGdpPipelineResponse

public struct CreateGdpPipelineResponse: Codable, Sendable {
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

extension CreateGdpPipelineResponse: CustomStringConvertible {
    public var description: String { "CreateGdpPipelineResponse()" }
}