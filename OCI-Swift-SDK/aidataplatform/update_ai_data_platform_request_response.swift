import Foundation

// MARK: - UpdateAiDataPlatformRequest

public struct UpdateAiDataPlatformRequest: Codable, Sendable {
    public var aiDataPlatformId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateAiDataPlatformDetails: UpdateAiDataPlatformDetails?

    private enum CodingKeys: String, CodingKey {
        case aiDataPlatformId, ifMatch, opcRequestId, updateAiDataPlatformDetails
    }

    public init(
                aiDataPlatformId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateAiDataPlatformDetails: UpdateAiDataPlatformDetails? = nil
    ) {
        self.aiDataPlatformId = aiDataPlatformId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateAiDataPlatformDetails = updateAiDataPlatformDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateAiDataPlatformRequest: CustomStringConvertible {
    public var description: String { "UpdateAiDataPlatformRequest()" }
}

// MARK: - UpdateAiDataPlatformResponse

public struct UpdateAiDataPlatformResponse: Codable, Sendable {
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

extension UpdateAiDataPlatformResponse: CustomStringConvertible {
    public var description: String { "UpdateAiDataPlatformResponse()" }
}