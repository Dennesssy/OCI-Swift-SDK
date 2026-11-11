import Foundation

// MARK: - CreateResourceAnalyticsInstanceRequest

public struct CreateResourceAnalyticsInstanceRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createResourceAnalyticsInstanceDetails: CreateResourceAnalyticsInstanceDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createResourceAnalyticsInstanceDetails
    }

    public init(
                opcRequestId: String? = nil,
                createResourceAnalyticsInstanceDetails: CreateResourceAnalyticsInstanceDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createResourceAnalyticsInstanceDetails = createResourceAnalyticsInstanceDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateResourceAnalyticsInstanceRequest: CustomStringConvertible {
    public var description: String { "CreateResourceAnalyticsInstanceRequest()" }
}

// MARK: - CreateResourceAnalyticsInstanceResponse

public struct CreateResourceAnalyticsInstanceResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var resourceAnalyticsInstance: ResourceAnalyticsInstance?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, resourceAnalyticsInstance
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                resourceAnalyticsInstance: ResourceAnalyticsInstance? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.resourceAnalyticsInstance = resourceAnalyticsInstance
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateResourceAnalyticsInstanceResponse: CustomStringConvertible {
    public var description: String { "CreateResourceAnalyticsInstanceResponse()" }
}