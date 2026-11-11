import Foundation

// MARK: - DeleteIotFlowRuntimeRequest

public struct DeleteIotFlowRuntimeRequest: Codable, Sendable {
    public var iotFlowRuntimeId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case iotFlowRuntimeId, ifMatch, opcRequestId
    }

    public init(
                iotFlowRuntimeId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.iotFlowRuntimeId = iotFlowRuntimeId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteIotFlowRuntimeRequest: CustomStringConvertible {
    public var description: String { "DeleteIotFlowRuntimeRequest()" }
}

// MARK: - DeleteIotFlowRuntimeResponse

public struct DeleteIotFlowRuntimeResponse: Codable, Sendable {
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

extension DeleteIotFlowRuntimeResponse: CustomStringConvertible {
    public var description: String { "DeleteIotFlowRuntimeResponse()" }
}