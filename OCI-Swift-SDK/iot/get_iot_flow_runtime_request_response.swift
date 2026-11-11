import Foundation

// MARK: - GetIotFlowRuntimeRequest

public struct GetIotFlowRuntimeRequest: Codable, Sendable {
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

extension GetIotFlowRuntimeRequest: CustomStringConvertible {
    public var description: String { "GetIotFlowRuntimeRequest()" }
}

// MARK: - GetIotFlowRuntimeResponse

public struct GetIotFlowRuntimeResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var iotFlowRuntime: IotFlowRuntime?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, iotFlowRuntime
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                iotFlowRuntime: IotFlowRuntime? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.iotFlowRuntime = iotFlowRuntime
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetIotFlowRuntimeResponse: CustomStringConvertible {
    public var description: String { "GetIotFlowRuntimeResponse()" }
}