import Foundation
import OCICommon

// MARK: - GetIotFlowRuntimeFlowsRequest

public struct GetIotFlowRuntimeFlowsRequest: Codable, Sendable {
    public var iotFlowRuntimeId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case iotFlowRuntimeId, opcRequestId
    }

    public init(
                iotFlowRuntimeId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.iotFlowRuntimeId = iotFlowRuntimeId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetIotFlowRuntimeFlowsRequest: CustomStringConvertible {
    public var description: String { "GetIotFlowRuntimeFlowsRequest()" }
}

// MARK: - GetIotFlowRuntimeFlowsResponse

public struct GetIotFlowRuntimeFlowsResponse: Codable, Sendable {
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

extension GetIotFlowRuntimeFlowsResponse: CustomStringConvertible {
    public var description: String { "GetIotFlowRuntimeFlowsResponse()" }
}