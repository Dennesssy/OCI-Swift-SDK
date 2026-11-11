import Foundation

// MARK: - DeleteDigitalTwinInstanceRequest

public struct DeleteDigitalTwinInstanceRequest: Codable, Sendable {
    public var digitalTwinInstanceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case digitalTwinInstanceId, ifMatch, opcRequestId
    }

    public init(
                digitalTwinInstanceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.digitalTwinInstanceId = digitalTwinInstanceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDigitalTwinInstanceRequest: CustomStringConvertible {
    public var description: String { "DeleteDigitalTwinInstanceRequest()" }
}

// MARK: - DeleteDigitalTwinInstanceResponse

public struct DeleteDigitalTwinInstanceResponse: Codable, Sendable {
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

extension DeleteDigitalTwinInstanceResponse: CustomStringConvertible {
    public var description: String { "DeleteDigitalTwinInstanceResponse()" }
}