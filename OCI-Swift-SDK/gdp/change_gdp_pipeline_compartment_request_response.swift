import Foundation

// MARK: - ChangeGdpPipelineCompartmentRequest

public struct ChangeGdpPipelineCompartmentRequest: Codable, Sendable {
    public var gdpPipelineId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeGdpPipelineCompartmentDetails: ChangeGdpPipelineCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case gdpPipelineId, ifMatch, opcRequestId, changeGdpPipelineCompartmentDetails
    }

    public init(
                gdpPipelineId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeGdpPipelineCompartmentDetails: ChangeGdpPipelineCompartmentDetails? = nil
    ) {
        self.gdpPipelineId = gdpPipelineId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeGdpPipelineCompartmentDetails = changeGdpPipelineCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeGdpPipelineCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeGdpPipelineCompartmentRequest()" }
}

// MARK: - ChangeGdpPipelineCompartmentResponse

public struct ChangeGdpPipelineCompartmentResponse: Codable, Sendable {
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

extension ChangeGdpPipelineCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeGdpPipelineCompartmentResponse()" }
}