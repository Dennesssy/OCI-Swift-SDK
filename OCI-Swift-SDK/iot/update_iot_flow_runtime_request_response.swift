import Foundation

// MARK: - UpdateIotFlowRuntimeRequest

public struct UpdateIotFlowRuntimeRequest: Codable, Sendable {
    public var iotFlowRuntimeId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateIotFlowRuntimeDetails: UpdateIotFlowRuntimeDetails?

    private enum CodingKeys: String, CodingKey {
        case iotFlowRuntimeId, ifMatch, opcRequestId, updateIotFlowRuntimeDetails
    }

    public init(
                iotFlowRuntimeId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateIotFlowRuntimeDetails: UpdateIotFlowRuntimeDetails? = nil
    ) {
        self.iotFlowRuntimeId = iotFlowRuntimeId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateIotFlowRuntimeDetails = updateIotFlowRuntimeDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateIotFlowRuntimeRequest: CustomStringConvertible {
    public var description: String { "UpdateIotFlowRuntimeRequest()" }
}

// MARK: - UpdateIotFlowRuntimeResponse

public struct UpdateIotFlowRuntimeResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateIotFlowRuntimeResponse: CustomStringConvertible {
    public var description: String { "UpdateIotFlowRuntimeResponse()" }
}