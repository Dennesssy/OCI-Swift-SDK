import Foundation

// MARK: - GetDigitalTwinModelRequest

public struct GetDigitalTwinModelRequest: Codable, Sendable {
    public var digitalTwinModelId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case digitalTwinModelId, opcRequestId
    }

    public init(
                digitalTwinModelId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.digitalTwinModelId = digitalTwinModelId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDigitalTwinModelRequest: CustomStringConvertible {
    public var description: String { "GetDigitalTwinModelRequest()" }
}

// MARK: - GetDigitalTwinModelResponse

public struct GetDigitalTwinModelResponse: Codable, Sendable {
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

extension GetDigitalTwinModelResponse: CustomStringConvertible {
    public var description: String { "GetDigitalTwinModelResponse()" }
}