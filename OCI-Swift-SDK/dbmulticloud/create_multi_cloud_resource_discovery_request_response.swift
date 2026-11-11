import Foundation

// MARK: - CreateMultiCloudResourceDiscoveryRequest

public struct CreateMultiCloudResourceDiscoveryRequest: Codable, Sendable {
    public var ifMatch: String?
    public var opcRequestId: String?
    public var createMultiCloudResourceDiscoveryDetails: CreateMultiCloudResourceDiscoveryDetails?

    private enum CodingKeys: String, CodingKey {
        case ifMatch, opcRequestId, createMultiCloudResourceDiscoveryDetails
    }

    public init(
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                createMultiCloudResourceDiscoveryDetails: CreateMultiCloudResourceDiscoveryDetails? = nil
    ) {
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.createMultiCloudResourceDiscoveryDetails = createMultiCloudResourceDiscoveryDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateMultiCloudResourceDiscoveryRequest: CustomStringConvertible {
    public var description: String { "CreateMultiCloudResourceDiscoveryRequest()" }
}

// MARK: - CreateMultiCloudResourceDiscoveryResponse

public struct CreateMultiCloudResourceDiscoveryResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var multiCloudResourceDiscovery: MultiCloudResourceDiscovery?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId, location, contentLocation, etag, multiCloudResourceDiscovery
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                multiCloudResourceDiscovery: MultiCloudResourceDiscovery? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.multiCloudResourceDiscovery = multiCloudResourceDiscovery
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateMultiCloudResourceDiscoveryResponse: CustomStringConvertible {
    public var description: String { "CreateMultiCloudResourceDiscoveryResponse()" }
}