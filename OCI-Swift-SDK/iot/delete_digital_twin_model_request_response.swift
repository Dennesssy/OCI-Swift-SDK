import Foundation

// MARK: - DeleteDigitalTwinModelRequest

public struct DeleteDigitalTwinModelRequest: Codable, Sendable {
    public var digitalTwinModelId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case digitalTwinModelId, ifMatch, opcRequestId
    }

    public init(
                digitalTwinModelId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.digitalTwinModelId = digitalTwinModelId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDigitalTwinModelRequest: CustomStringConvertible {
    public var description: String { "DeleteDigitalTwinModelRequest()" }
}

// MARK: - DeleteDigitalTwinModelResponse

public struct DeleteDigitalTwinModelResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDigitalTwinModelResponse: CustomStringConvertible {
    public var description: String { "DeleteDigitalTwinModelResponse()" }
}