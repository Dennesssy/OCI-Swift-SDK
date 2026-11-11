import Foundation

// MARK: - ChangeIotFlowRuntimeCompartmentRequest

public struct ChangeIotFlowRuntimeCompartmentRequest: Codable, Sendable {
    public var iotFlowRuntimeId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeIotFlowRuntimeCompartmentDetails: ChangeIotFlowRuntimeCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case iotFlowRuntimeId, ifMatch, opcRequestId, changeIotFlowRuntimeCompartmentDetails
    }

    public init(
                iotFlowRuntimeId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeIotFlowRuntimeCompartmentDetails: ChangeIotFlowRuntimeCompartmentDetails? = nil
    ) {
        self.iotFlowRuntimeId = iotFlowRuntimeId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeIotFlowRuntimeCompartmentDetails = changeIotFlowRuntimeCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeIotFlowRuntimeCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeIotFlowRuntimeCompartmentRequest()" }
}

// MARK: - ChangeIotFlowRuntimeCompartmentResponse

public struct ChangeIotFlowRuntimeCompartmentResponse: Codable, Sendable {
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

extension ChangeIotFlowRuntimeCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeIotFlowRuntimeCompartmentResponse()" }
}