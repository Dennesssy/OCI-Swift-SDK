import Foundation

// MARK: - ChangeAiDataPlatformCompartmentRequest

public struct ChangeAiDataPlatformCompartmentRequest: Codable, Sendable {
    public var aiDataPlatformId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeAiDataPlatformCompartmentDetails: ChangeAiDataPlatformCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case aiDataPlatformId, ifMatch, opcRequestId, changeAiDataPlatformCompartmentDetails
    }

    public init(
                aiDataPlatformId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeAiDataPlatformCompartmentDetails: ChangeAiDataPlatformCompartmentDetails? = nil
    ) {
        self.aiDataPlatformId = aiDataPlatformId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeAiDataPlatformCompartmentDetails = changeAiDataPlatformCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeAiDataPlatformCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeAiDataPlatformCompartmentRequest()" }
}

// MARK: - ChangeAiDataPlatformCompartmentResponse

public struct ChangeAiDataPlatformCompartmentResponse: Codable, Sendable {
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

extension ChangeAiDataPlatformCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeAiDataPlatformCompartmentResponse()" }
}