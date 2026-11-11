import Foundation

// MARK: - CreateApiPlatformInstanceRequest

public struct CreateApiPlatformInstanceRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createApiPlatformInstanceDetails: CreateApiPlatformInstanceDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createApiPlatformInstanceDetails
    }

    public init(
                opcRequestId: String? = nil,
                createApiPlatformInstanceDetails: CreateApiPlatformInstanceDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createApiPlatformInstanceDetails = createApiPlatformInstanceDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateApiPlatformInstanceRequest: CustomStringConvertible {
    public var description: String { "CreateApiPlatformInstanceRequest()" }
}

// MARK: - CreateApiPlatformInstanceResponse

public struct CreateApiPlatformInstanceResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var apiPlatformInstance: ApiPlatformInstance?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, apiPlatformInstance
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                apiPlatformInstance: ApiPlatformInstance? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.apiPlatformInstance = apiPlatformInstance
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateApiPlatformInstanceResponse: CustomStringConvertible {
    public var description: String { "CreateApiPlatformInstanceResponse()" }
}