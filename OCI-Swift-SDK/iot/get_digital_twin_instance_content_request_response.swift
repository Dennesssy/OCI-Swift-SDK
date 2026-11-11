import Foundation
import OCICommon

// MARK: - GetDigitalTwinInstanceContentRequest

public struct GetDigitalTwinInstanceContentRequest: Codable, Sendable {
    public var digitalTwinInstanceId: String?
    public var opcRequestId: String?
    public var shouldIncludeMetadata: Bool?

    private enum CodingKeys: String, CodingKey {
        case digitalTwinInstanceId, opcRequestId, shouldIncludeMetadata
    }

    public init(
                digitalTwinInstanceId: String? = nil,
                opcRequestId: String? = nil,
                shouldIncludeMetadata: Bool? = nil
    ) {
        self.digitalTwinInstanceId = digitalTwinInstanceId
        self.opcRequestId = opcRequestId
        self.shouldIncludeMetadata = shouldIncludeMetadata
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDigitalTwinInstanceContentRequest: CustomStringConvertible {
    public var description: String { "GetDigitalTwinInstanceContentRequest()" }
}

// MARK: - GetDigitalTwinInstanceContentResponse

public struct GetDigitalTwinInstanceContentResponse: Codable, Sendable {
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

extension GetDigitalTwinInstanceContentResponse: CustomStringConvertible {
    public var description: String { "GetDigitalTwinInstanceContentResponse()" }
}