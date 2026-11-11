import Foundation

// MARK: - DeleteMultiCloudResourceDiscoveryRequest

public struct DeleteMultiCloudResourceDiscoveryRequest: Codable, Sendable {
    public var multiCloudResourceDiscoveryId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case multiCloudResourceDiscoveryId, ifMatch, opcRequestId
    }

    public init(
                multiCloudResourceDiscoveryId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.multiCloudResourceDiscoveryId = multiCloudResourceDiscoveryId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteMultiCloudResourceDiscoveryRequest: CustomStringConvertible {
    public var description: String { "DeleteMultiCloudResourceDiscoveryRequest()" }
}

// MARK: - DeleteMultiCloudResourceDiscoveryResponse

public struct DeleteMultiCloudResourceDiscoveryResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcWorkRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcWorkRequestId
    }

    public init(
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteMultiCloudResourceDiscoveryResponse: CustomStringConvertible {
    public var description: String { "DeleteMultiCloudResourceDiscoveryResponse()" }
}