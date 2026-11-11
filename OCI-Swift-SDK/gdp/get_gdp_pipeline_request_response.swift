import Foundation

// MARK: - GetGdpPipelineRequest

public struct GetGdpPipelineRequest: Codable, Sendable {
    public var gdpPipelineId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case gdpPipelineId, opcRequestId
    }

    public init(
                gdpPipelineId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.gdpPipelineId = gdpPipelineId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetGdpPipelineRequest: CustomStringConvertible {
    public var description: String { "GetGdpPipelineRequest()" }
}

// MARK: - GetGdpPipelineResponse

public struct GetGdpPipelineResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var gdpPipeline: GdpPipeline?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, gdpPipeline
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                gdpPipeline: GdpPipeline? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.gdpPipeline = gdpPipeline
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetGdpPipelineResponse: CustomStringConvertible {
    public var description: String { "GetGdpPipelineResponse()" }
}