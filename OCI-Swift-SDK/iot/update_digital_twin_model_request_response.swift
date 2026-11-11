import Foundation

// MARK: - UpdateDigitalTwinModelRequest

public struct UpdateDigitalTwinModelRequest: Codable, Sendable {
    public var digitalTwinModelId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateDigitalTwinModelDetails: UpdateDigitalTwinModelDetails?

    private enum CodingKeys: String, CodingKey {
        case digitalTwinModelId, ifMatch, opcRequestId, updateDigitalTwinModelDetails
    }

    public init(
                digitalTwinModelId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateDigitalTwinModelDetails: UpdateDigitalTwinModelDetails? = nil
    ) {
        self.digitalTwinModelId = digitalTwinModelId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateDigitalTwinModelDetails = updateDigitalTwinModelDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDigitalTwinModelRequest: CustomStringConvertible {
    public var description: String { "UpdateDigitalTwinModelRequest()" }
}

// MARK: - UpdateDigitalTwinModelResponse

public struct UpdateDigitalTwinModelResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var digitalTwinModel: DigitalTwinModel?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, digitalTwinModel
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                digitalTwinModel: DigitalTwinModel? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.digitalTwinModel = digitalTwinModel
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDigitalTwinModelResponse: CustomStringConvertible {
    public var description: String { "UpdateDigitalTwinModelResponse()" }
}