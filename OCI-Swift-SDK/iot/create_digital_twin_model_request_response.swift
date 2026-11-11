import Foundation

// MARK: - CreateDigitalTwinModelRequest

public struct CreateDigitalTwinModelRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createDigitalTwinModelDetails: CreateDigitalTwinModelDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createDigitalTwinModelDetails
    }

    public init(
                opcRequestId: String? = nil,
                createDigitalTwinModelDetails: CreateDigitalTwinModelDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createDigitalTwinModelDetails = createDigitalTwinModelDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDigitalTwinModelRequest: CustomStringConvertible {
    public var description: String { "CreateDigitalTwinModelRequest()" }
}

// MARK: - CreateDigitalTwinModelResponse

public struct CreateDigitalTwinModelResponse: Codable, Sendable {
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

extension CreateDigitalTwinModelResponse: CustomStringConvertible {
    public var description: String { "CreateDigitalTwinModelResponse()" }
}