import Foundation

// MARK: - UpdateMultiCloudResourceDiscoveryRequest

public struct UpdateMultiCloudResourceDiscoveryRequest: Codable, Sendable {
    public var multiCloudResourceDiscoveryId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateMultiCloudResourceDiscoveryDetails: UpdateMultiCloudResourceDiscoveryDetails?

    private enum CodingKeys: String, CodingKey {
        case multiCloudResourceDiscoveryId, ifMatch, opcRequestId, updateMultiCloudResourceDiscoveryDetails
    }

    public init(
                multiCloudResourceDiscoveryId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateMultiCloudResourceDiscoveryDetails: UpdateMultiCloudResourceDiscoveryDetails? = nil
    ) {
        self.multiCloudResourceDiscoveryId = multiCloudResourceDiscoveryId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateMultiCloudResourceDiscoveryDetails = updateMultiCloudResourceDiscoveryDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateMultiCloudResourceDiscoveryRequest: CustomStringConvertible {
    public var description: String { "UpdateMultiCloudResourceDiscoveryRequest()" }
}

// MARK: - UpdateMultiCloudResourceDiscoveryResponse

public struct UpdateMultiCloudResourceDiscoveryResponse: Codable, Sendable {
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

extension UpdateMultiCloudResourceDiscoveryResponse: CustomStringConvertible {
    public var description: String { "UpdateMultiCloudResourceDiscoveryResponse()" }
}