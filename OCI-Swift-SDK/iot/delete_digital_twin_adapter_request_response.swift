import Foundation

// MARK: - DeleteDigitalTwinAdapterRequest

public struct DeleteDigitalTwinAdapterRequest: Codable, Sendable {
    public var digitalTwinAdapterId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case digitalTwinAdapterId, ifMatch, opcRequestId
    }

    public init(
                digitalTwinAdapterId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.digitalTwinAdapterId = digitalTwinAdapterId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDigitalTwinAdapterRequest: CustomStringConvertible {
    public var description: String { "DeleteDigitalTwinAdapterRequest()" }
}

// MARK: - DeleteDigitalTwinAdapterResponse

public struct DeleteDigitalTwinAdapterResponse: Codable, Sendable {
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

extension DeleteDigitalTwinAdapterResponse: CustomStringConvertible {
    public var description: String { "DeleteDigitalTwinAdapterResponse()" }
}