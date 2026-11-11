import Foundation

// MARK: - GetAiDataPlatformRequest

public struct GetAiDataPlatformRequest: Codable, Sendable {
    public var aiDataPlatformId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case aiDataPlatformId, opcRequestId
    }

    public init(
                aiDataPlatformId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.aiDataPlatformId = aiDataPlatformId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetAiDataPlatformRequest: CustomStringConvertible {
    public var description: String { "GetAiDataPlatformRequest()" }
}

// MARK: - GetAiDataPlatformResponse

public struct GetAiDataPlatformResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var aiDataPlatform: AiDataPlatform?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, aiDataPlatform
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                aiDataPlatform: AiDataPlatform? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.aiDataPlatform = aiDataPlatform
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetAiDataPlatformResponse: CustomStringConvertible {
    public var description: String { "GetAiDataPlatformResponse()" }
}