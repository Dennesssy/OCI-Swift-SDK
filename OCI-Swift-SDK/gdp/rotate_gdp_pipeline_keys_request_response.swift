import Foundation

// MARK: - RotateGdpPipelineKeysRequest

public struct RotateGdpPipelineKeysRequest: Codable, Sendable {
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

extension RotateGdpPipelineKeysRequest: CustomStringConvertible {
    public var description: String { "RotateGdpPipelineKeysRequest()" }
}

// MARK: - RotateGdpPipelineKeysResponse

public struct RotateGdpPipelineKeysResponse: Codable, Sendable {
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

extension RotateGdpPipelineKeysResponse: CustomStringConvertible {
    public var description: String { "RotateGdpPipelineKeysResponse()" }
}