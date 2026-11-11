import Foundation

// MARK: - DeleteAiDataPlatformRequest

public struct DeleteAiDataPlatformRequest: Codable, Sendable {
    public var aiDataPlatformId: String?
    public var isForceDelete: Bool?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case aiDataPlatformId, isForceDelete, ifMatch, opcRequestId
    }

    public init(
                aiDataPlatformId: String? = nil,
                isForceDelete: Bool? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.aiDataPlatformId = aiDataPlatformId
        self.isForceDelete = isForceDelete
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteAiDataPlatformRequest: CustomStringConvertible {
    public var description: String { "DeleteAiDataPlatformRequest()" }
}

// MARK: - DeleteAiDataPlatformResponse

public struct DeleteAiDataPlatformResponse: Codable, Sendable {
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

extension DeleteAiDataPlatformResponse: CustomStringConvertible {
    public var description: String { "DeleteAiDataPlatformResponse()" }
}