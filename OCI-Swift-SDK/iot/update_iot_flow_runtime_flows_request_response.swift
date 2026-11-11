import Foundation
import OCICommon

// MARK: - UpdateIotFlowRuntimeFlowsRequest

public struct UpdateIotFlowRuntimeFlowsRequest: Codable, Sendable {
    public var iotFlowRuntimeId: String?
    public var flowsDocument: JSONValue?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case iotFlowRuntimeId, flowsDocument, ifMatch, opcRequestId
    }

    public init(
                iotFlowRuntimeId: String? = nil,
                flowsDocument: JSONValue? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.iotFlowRuntimeId = iotFlowRuntimeId
        self.flowsDocument = flowsDocument
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateIotFlowRuntimeFlowsRequest: CustomStringConvertible {
    public var description: String { "UpdateIotFlowRuntimeFlowsRequest()" }
}

// MARK: - UpdateIotFlowRuntimeFlowsResponse

public struct UpdateIotFlowRuntimeFlowsResponse: Codable, Sendable {
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

extension UpdateIotFlowRuntimeFlowsResponse: CustomStringConvertible {
    public var description: String { "UpdateIotFlowRuntimeFlowsResponse()" }
}