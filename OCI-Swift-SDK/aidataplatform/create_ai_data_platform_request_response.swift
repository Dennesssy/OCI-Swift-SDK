import Foundation

// MARK: - CreateAiDataPlatformRequest

public struct CreateAiDataPlatformRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createAiDataPlatformDetails: CreateAiDataPlatformDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createAiDataPlatformDetails
    }

    public init(
                opcRequestId: String? = nil,
                createAiDataPlatformDetails: CreateAiDataPlatformDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createAiDataPlatformDetails = createAiDataPlatformDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateAiDataPlatformRequest: CustomStringConvertible {
    public var description: String { "CreateAiDataPlatformRequest()" }
}

// MARK: - CreateAiDataPlatformResponse

public struct CreateAiDataPlatformResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var aiDataPlatform: AiDataPlatform?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, aiDataPlatform
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                aiDataPlatform: AiDataPlatform? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.aiDataPlatform = aiDataPlatform
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateAiDataPlatformResponse: CustomStringConvertible {
    public var description: String { "CreateAiDataPlatformResponse()" }
}