import Foundation

// MARK: - GetApiPlatformInstanceRequest

public struct GetApiPlatformInstanceRequest: Codable, Sendable {
    public var apiPlatformInstanceId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case apiPlatformInstanceId, opcRequestId
    }

    public init(
                apiPlatformInstanceId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.apiPlatformInstanceId = apiPlatformInstanceId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetApiPlatformInstanceRequest: CustomStringConvertible {
    public var description: String { "GetApiPlatformInstanceRequest()" }
}

// MARK: - GetApiPlatformInstanceResponse

public struct GetApiPlatformInstanceResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var apiPlatformInstance: ApiPlatformInstance?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, apiPlatformInstance
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                apiPlatformInstance: ApiPlatformInstance? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.apiPlatformInstance = apiPlatformInstance
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetApiPlatformInstanceResponse: CustomStringConvertible {
    public var description: String { "GetApiPlatformInstanceResponse()" }
}