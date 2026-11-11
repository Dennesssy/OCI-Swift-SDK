import Foundation

// MARK: - UpdateApiPlatformInstanceRequest

public struct UpdateApiPlatformInstanceRequest: Codable, Sendable {
    public var apiPlatformInstanceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateApiPlatformInstanceDetails: UpdateApiPlatformInstanceDetails?

    private enum CodingKeys: String, CodingKey {
        case apiPlatformInstanceId, ifMatch, opcRequestId, updateApiPlatformInstanceDetails
    }

    public init(
                apiPlatformInstanceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateApiPlatformInstanceDetails: UpdateApiPlatformInstanceDetails? = nil
    ) {
        self.apiPlatformInstanceId = apiPlatformInstanceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateApiPlatformInstanceDetails = updateApiPlatformInstanceDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateApiPlatformInstanceRequest: CustomStringConvertible {
    public var description: String { "UpdateApiPlatformInstanceRequest()" }
}

// MARK: - UpdateApiPlatformInstanceResponse

public struct UpdateApiPlatformInstanceResponse: Codable, Sendable {
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

extension UpdateApiPlatformInstanceResponse: CustomStringConvertible {
    public var description: String { "UpdateApiPlatformInstanceResponse()" }
}