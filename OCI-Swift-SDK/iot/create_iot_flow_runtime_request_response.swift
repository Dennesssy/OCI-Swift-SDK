import Foundation

// MARK: - CreateIotFlowRuntimeRequest

public struct CreateIotFlowRuntimeRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createIotFlowRuntimeDetails: CreateIotFlowRuntimeDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createIotFlowRuntimeDetails
    }

    public init(
                opcRequestId: String? = nil,
                createIotFlowRuntimeDetails: CreateIotFlowRuntimeDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createIotFlowRuntimeDetails = createIotFlowRuntimeDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateIotFlowRuntimeRequest: CustomStringConvertible {
    public var description: String { "CreateIotFlowRuntimeRequest()" }
}

// MARK: - CreateIotFlowRuntimeResponse

public struct CreateIotFlowRuntimeResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var iotFlowRuntime: IotFlowRuntime?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, iotFlowRuntime
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                iotFlowRuntime: IotFlowRuntime? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.iotFlowRuntime = iotFlowRuntime
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateIotFlowRuntimeResponse: CustomStringConvertible {
    public var description: String { "CreateIotFlowRuntimeResponse()" }
}