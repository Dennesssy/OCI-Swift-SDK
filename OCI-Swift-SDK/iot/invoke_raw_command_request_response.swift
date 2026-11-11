import Foundation
import OCICommon

// MARK: - InvokeRawCommandRequest

public struct InvokeRawCommandRequest: Codable, Sendable {
    public var digitalTwinInstanceId: String?
    public var opcRequestId: String?
    public var invokeRawCommandDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case digitalTwinInstanceId, opcRequestId, invokeRawCommandDetails
    }

    public init(
                digitalTwinInstanceId: String? = nil,
                opcRequestId: String? = nil,
                invokeRawCommandDetails: JSONValue? = nil
    ) {
        self.digitalTwinInstanceId = digitalTwinInstanceId
        self.opcRequestId = opcRequestId
        self.invokeRawCommandDetails = invokeRawCommandDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension InvokeRawCommandRequest: CustomStringConvertible {
    public var description: String { "InvokeRawCommandRequest()" }
}

// MARK: - InvokeRawCommandResponse

public struct InvokeRawCommandResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var location: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, location
    }

    public init(
                opcRequestId: String? = nil,
                location: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.location = location
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension InvokeRawCommandResponse: CustomStringConvertible {
    public var description: String { "InvokeRawCommandResponse()" }
}