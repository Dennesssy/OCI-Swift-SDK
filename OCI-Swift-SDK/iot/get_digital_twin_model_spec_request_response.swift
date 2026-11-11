import Foundation
import OCICommon

// MARK: - GetDigitalTwinModelSpecRequest

public struct GetDigitalTwinModelSpecRequest: Codable, Sendable {
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

extension GetDigitalTwinModelSpecRequest: CustomStringConvertible {
    public var description: String { "GetDigitalTwinModelSpecRequest()" }
}

// MARK: - GetDigitalTwinModelSpecResponse

public struct GetDigitalTwinModelSpecResponse: Codable, Sendable {
    public var object: [String: JSONValue]?
    public var etag: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case object, etag, opcRequestId
    }

    public init(
                object: [String: JSONValue]? = nil,
                etag: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.object = object
        self.etag = etag
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDigitalTwinModelSpecResponse: CustomStringConvertible {
    public var description: String { "GetDigitalTwinModelSpecResponse()" }
}