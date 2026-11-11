import Foundation

// MARK: - GetMultiCloudMetadataRequest

public struct GetMultiCloudMetadataRequest: Codable, Sendable {
    public var compartmentId: String?
    public var subscriptionId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, subscriptionId, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                subscriptionId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.subscriptionId = subscriptionId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetMultiCloudMetadataRequest: CustomStringConvertible {
    public var description: String { "GetMultiCloudMetadataRequest()" }
}

// MARK: - GetMultiCloudMetadataResponse

public struct GetMultiCloudMetadataResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var multiCloudMetadata: MultiCloudMetadata?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, multiCloudMetadata
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                multiCloudMetadata: MultiCloudMetadata? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.multiCloudMetadata = multiCloudMetadata
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetMultiCloudMetadataResponse: CustomStringConvertible {
    public var description: String { "GetMultiCloudMetadataResponse()" }
}